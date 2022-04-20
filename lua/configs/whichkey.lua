local M = {}
function M.config()
    local wk = require('which-key')
    opts = {
        mode = 'n',
        prefix = '<leader>',
        buffer = nil,
        silent = false,
        noremap = true,
        nowait = false,
    }
    local keymaps = {
        b = {
            name = 'Buffer',
            d = {'<cmd>Bdelete<CR>','Delete buffer'},
        },
        c = {
            name = 'Command',
            w = {':w<cr>',''},
            W = {':wa<cr>',''},
            q = {':q<cr>',''},
            Q = {':q!<cr>',''},
        },
        e = {
            name = 'Easy Move',
            c = {':HopChar1<cr>','Char1'},
            C = {':HopChar2<cr>','Char2'},
            l = {':HopLine<cr>','Line'},
            w = {':HopWord<cr>','Word'},
            p = {':HopPattern<cr>','Pattern'},
        },
        f = {
            name = 'File & Find',
            b = {'<cmd>Telescope buffers<CR>','Find Buffer'},
            f = {'<cmd>Telescope find_files<CR>','Find File'},
            r = {'<cmd>Telescope oldfiles<cr>','Open Recent File'},
            s = {'<cmd>Telescope live_grep<CR>','Find String'},
            t = {':NvimTreeToggle<cr>','File tree toggle'},
        },
        g ={
            name = 'Go & GIT',
            s = {":lua require('myplugins.quickpath').go_settings_path()<cr>",'Go settings path'}

        },
        j = {
            name = 'Jump To',
            p = {":lua require('myplugins.paramjump').jump()<left>",'Go Param n'},
        },
        l = {
            name = 'Lsp',
            b = {'<cmd>SymbolsOutline<CR>','View Symbols'},
            d = {'<cmd>lua vim.lsp.buf.definition()<CR>','Definition'},
            D = {'<cmd>lua vim.lsp.buf.declaration()<CR>','Declaration'},
            e = {'<cmd>lua vim.diagnostic.setloclist()()<CR>','Error List'},
            f = {'<cmd>lua vim.lsp.buf.formatting()<CR>','Formatting'},
            i = {'<cmd>lua vim.lsp.buf.implementation()<CR>','Implementation'},
            k = {'<cmd>lua vim.lsp.buf.hover()<CR>','Hover'},
            r = {'<cmd>lua vim.lsp.buf.references()<CR>','References'},
            t = {'<cmd>lua vim.lsp.buf.type_definition()<CR>','Type Definition'},
        },
        p = {
            name = 'Params',
            j = {":lua require('myplugins.paramer').jump()<left>", 'Param jump'},
            c = {":lua require('myplugins.paramer').create_param()<left>", 'Param create'},
            n = {":lua require('myplugins.paramer').jump_to_next_param()<cr>", 'Param next'},
            p = {":lua require('myplugins.paramer').jump_to_prev_param()<cr>", 'Param prev'},

        },
        r = {
            name = 'Replace',
            a = {':1,$s///g<left><left><left>','Replace all'},
            l = {':s///g<left><left><left>','Replace line'},
        },
        s = {
            name = 'Show & Save',
            t = {':FloatermToggle<cr>','Terminal'},
        },
        w = {
            name = "Window & Workspace",
            h = {':sp<cr>','Horizontal Split Window'},
            v = {':vs<cr>','Vertical Window'},
            x = {':x<cr>','Close'},
            s = {
                name = "Workspace",
                a = {':WorkspacesAdd  .<left><left>','Add workspace'},
                r = {':WorkspacesRemove ','Remove workspace'},
                l = {':WorkspacesList<cr>','List workspace'},
                o = {':WorkspacesOpen ','Open workspace'},
            }
        },
    }
    wk.register(keymaps, opts)
end

return M
