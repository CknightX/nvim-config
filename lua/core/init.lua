-- basics
vim.cmd([[
    syntax on
    filetype plugin indent on
]])
-- set autochdir
-- 设置项目目录
-- vim.api.nvim_set_current_dir(work_path)
vim.opt.number          = true
vim.opt.relativenumber  = false
vim.opt.termguicolors   = true
vim.opt.shiftround      = true
vim.opt.updatetime      = 100
vim.opt.cursorline      = true
vim.opt.autowrite       = true
if (vim.fn.has('termguicolors') == 1) then
    vim.opt.termguicolors = true
end
-- tabs
vim.opt.smartindent      = true
vim.opt.tabstop         = 4
vim.opt.shiftwidth      = 4
vim.opt.softtabstop     = 4
vim.opt.expandtab       = true

-- 键盘映射
require("core.keymaps")
-- 插件载入
require("core.plugins")
-- disable some useless standard plugins to save startup time
-- these features have been better covered by plugins
-- vim.g.loaded_matchparen        = 1
vim.g.loaded_matchit           = 1
vim.g.loaded_logiPat           = 1
vim.g.loaded_rrhelper          = 1
vim.g.loaded_tarPlugin         = 1
vim.g.loaded_gzip              = 1
vim.g.loaded_zipPlugin         = 1
vim.g.loaded_2html_plugin      = 1
vim.g.loaded_shada_plugin      = 1
vim.g.loaded_spellfile_plugin  = 1
vim.g.loaded_netrw             = 1
vim.g.loaded_netrwPlugin       = 1
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_remote_plugins    = 1
-- theme
require("core.theme")

-- Load plugin configs
-- plugins without extra configs are configured directly here
require("impatient")
require("Comment").setup()
require("todo-comments").setup()
require("gitsigns").setup()
require("hop").setup()
require("workspaces").setup()


-- myplugins
require("myplugins.autorun").setup()


-- plugins with config
require("configs.autocomplete").config()
require("configs.statusline").config()
require("configs.filetree").config()
require("configs.treesitter").config()
require("configs.outlinetree").config()
require("configs.startscreen").config()
require("configs.telescope").config()
require("configs.bufferline").config()
require("configs.whichkey").config()
require("nvim-cursorline").setup {
  cursorline = {
    enable = true,
    timeout = 1000,
    number = false,
  },
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
  }
}
