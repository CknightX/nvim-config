-- packer.nvim
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    -- 符号补全
    use 'jiangmiao/auto-pairs'
    -- use 'windwp/nvim-autopairs'
    -- 缩进线
    use 'Yggdroot/indentLine'
    -- starup time optimise
    use 'dstein64/vim-startuptime'
    use 'lewis6991/impatient.nvim'
    use 'nathom/filetype.nvim'
    -- 一键注释
    use 'numToStr/Comment.nvim'

    -- buffer
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use 'moll/vim-bbye' -- for more sensible delete buffer cmd

    -- themes (disabled other themes to optimize startup time)
    use 'sainnhe/sonokai'
    use 'hzchirs/vim-material'
--    use 'joshdick/onedark.vim'
--    use { 'catppuccin/nvim', as='catppuccin' }
--    use { 'sonph/onehalf', rtp='vim/' }
--    use 'liuchengxu/space-vim-dark'
--    use 'ahmedabdulrahman/aylin.vim'

    -- file tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- language
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'nvim-treesitter/nvim-treesitter'
    use 'onsails/lspkind-nvim'

    -- git
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    -- status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- tagbar
    use 'simrat39/symbols-outline.nvim'

    -- floating terminal
    use 'voldikss/vim-floaterm'

    -- file telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }
    -- surround
    use 'tpope/vim-surround'

    -- startup screen
--    use '~/Developer/aleph-nvim'
    use 'p-z-l/aleph-nvim'
    -- TODOlist
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim"
    }
    -- which key
    use {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
        end
    }
    -- easymotion
    use {
        'phaazon/hop.nvim',
        branch = 'v1', 
    }
    -- workspace
    use 'natecraddock/workspaces.nvim'
    -- cursorline
    use 'yamatsum/nvim-cursorline'
end)

