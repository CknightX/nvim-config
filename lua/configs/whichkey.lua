local M = {}
function M.config()
    local wk = require('whichkey_setup')
    local keymap = {
        b = {
            name = 'buffer',
            d = {'<Cmd>Bdelete<CR>','delete buffer'},
        },
        l = {
            name = 'lsp',
            b = {'<Cmd>SymbolsOutline<CR>','view Symbols'},
            f = {'<Cmd>lua vim.lsp.formatting()<CR>','formatting'},
        },
        p = {
            name = 'plugins',
            a = {":lua require('myplugins.paramjump').jump()<left>",'Param jump'},
            c = {'<Cmd>PackerClean<CR>','Clean plugins'},
            i = {'<Cmd>PackerInstall<CR>','Install plugins'},
        },
        t = {
            name = 'Telescope',
            b = {'<Cmd>Telescope buffers<CR>','list buffers'},
            f = {'<Cmd>Telescope find_files<CR>','find files'},
            s = {'<Cmd>Telescope live_grep<CR>','grep find str'},
        },
    }
    wk.register_keymap('leader', keymap)
    wk.config{
        hide_statusline = false,
        default_keymap_settings = {
            silent=true,
            noremap=true,
        },
        default_mode = 'n',
    }
end
return M
