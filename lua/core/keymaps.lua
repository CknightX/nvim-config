vim.g.mapleader = ';'

local function mapkey(mode, lhs, rhs)
    vim.api.nvim_set_keymap(mode, lhs, rhs, {noremap=true})
end

local function mapcmd(key, cmd)
    vim.api.nvim_set_keymap('n', key, ':'..cmd..'<cr>', {noremap=true})
end

local function maplua(key, txt)
    vim.api.nvim_set_keymap('n', key, ':lua '..txt..'<cr>', {noremap=true})
end

-- keymaps
-- f: file tree
mapcmd('<leader>ft', 'NvimTreeToggle')
mapcmd('<leader>ff', 'NvimTreeFocus')
-- y: telescope
mapcmd('<leader>yf', "Telescope find_files")
mapcmd('<leader>yg', "Telescope live_grep")
mapcmd('<leader>yb', "Telescope buffers")
-- c: quick command
mapkey('n', '<leader>ce', ':e<space>')
mapcmd('<leader>cw', 'w')
mapcmd('<leader>cW', 'wa')
mapcmd('<leader>cE', 'e!')
mapcmd('<leader>cq', 'q')
mapcmd('<leader>cQ', 'q!')
mapcmd('<leader>cx', 'x')
-- w: window
mapkey('n', '<m-h>', '<c-w>h')
mapkey('n', '<m-H>', '<c-w>H')
mapkey('n', '<m-j>', '<c-w>j')
mapkey('n', '<m-k>', '<c-w>k')
mapkey('n', '<m-l>', '<c-w>l')
mapkey('n', '<m-L>', '<c-w>L')

mapkey('n', '<leader>w1', '<c-w>o')
mapcmd('<leader>wx', 'x')
mapcmd('<leader>ws', 'sp')
mapcmd('<leader>wv', 'vs')
-- window resize
mapkey('n', '<m-right>', '<c-w><')
mapkey('n', '<m-left>', '<c-w>>')
mapkey('n', '<m-up>', '<c-w>-')
mapkey('n', '<m-down>', '<c-w>+')
mapcmd('n', '<m-r>', 'resize<space>')
mapcmd('n', '<m-t>', 'vertical resize<space>')
-- b: buffer
mapcmd('<leader>bn', 'bn')
mapcmd('<leader>bp', 'bp')
mapcmd('<leader>bd', 'Bdelete')
-- p: plugins
mapcmd('<leader>pi', 'PackerInstall')
mapcmd('<leader>pc', 'PackerClean')
-- s: search
mapkey('n', '<leader>sw', '/\\<lt>\\><left><left>')
-- r: replace
-- 替换一行
mapkey('n', '<leader>rl', ':s///g<left><left><left>')
-- 替换所有
mapkey('n', '<leader>ra', ':1,$s///g<left><left><left>')
-- l/g/w: language
-- l: general
-- g: goto
-- w: workspace
maplua('<leader>le', 'vim.diagnostic.open_float()')
maplua('<leader>lq', 'vim.diagnostic.setloclist()')
maplua('<leader>lk', 'vim.lsp.buf.hover()')
maplua('<leader>lr', 'vim.lsp.buf.rename()')
maplua('<leader>lh', 'vim.lsp.buf.signature_help()')
maplua('<leader>la', 'vim.lsp.buf.code_action()')
maplua('<leader>lf', 'vim.lsp.buf.formatting()')
mapcmd('<leader>lb', 'SymbolsOutline')

maplua('<leader>gD', 'vim.lsp.buf.declaration()')
maplua('<leader>gd', 'vim.lsp.buf.definition()')
maplua('<leader>gt', 'vim.lsp.buf.type_definition()')
maplua('<leader>gi', 'vim.lsp.buf.implementation()')
maplua('<leader>gp', 'vim.diagnostic.goto_prev()')
maplua('<leader>gn', 'vim.diagnostic.goto_next()')
maplua('<leader>gr', 'vim.lsp.buf.references()')

maplua('<leader>wa', 'vim.lsp.buf.add_workspace_folder()')
maplua('<leader>wr', 'vim.lsp.buf.remove_workspace_folder()')
-- maplua('<leader>wl', 'print(vim.inspect(vim.lsp.buf.list_workspace_folders()))')
-- t: terminal
mapcmd('<leader>tt', 'FloatermToggle')
mapcmd('<leader>tn', 'FloatermNew')

