# Neovim Config

## Setup
1. Use the latest version of NeoVim
1. Install packer.nvim by following the [official instructions](https://github.com/wbthomason/packer.nvim#quickstart)
1. Clone this repo
   1. Windows:``
   1. *nix:`git clone https://github.com/cknightx/nvim-config.git ~/.config/nvim`
1. Run `:PackerInstall`, if it failed try again
1. LSP config
   * Fill in the lang need to support in `lua/configs/autocomplete.lua`, then install the language server. For a list of language servers, see [here](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)
1. Treesitter config
   * Install a parser for a lang by `:TSInstall <lang>` or fill in the `lua/configs/treesitter.lua`
1.  install [nerd font](https://github.com/laishulu/Sarasa-Mono-SC-Nerd) to ensure the correct display of special symbols

## Usage

> TODO: for now read `lua/core/keymaps.lua` for reference

Use `;` as leader key

### Keymaps

#### File tree

NvimTreeToggle:        `;ft`

NvimTreeFocus:         `;ff`

#### Window

resize width :              `<a-left|right>`

resize height :             `<a-up|down>`

change window:	 `<a-h|j|k|l>`

exchange pos:            `a-H|L` 

horizon split:              `;ws`

vertical split:               `;sp`

#### Buffer

next buffer:                `;bn`

prev buffer:                `;bp`



#### Replace

line:                             `;rl` ->  `:s/<cursor>//g`

all:                                `ra` -> `:1,$s/<cursor>//g`

#### LSP

symbol list:                 `;lb`

function detail:          `;lk`

rename:                      `;lr`

format:                        `lf`

definition:                   `;gd`

declaration:                `;gD`

type_definition:         `;gt`

implementation:       `;gi`

show references:      `;gr`



#### Telescope

find_files:                    `;yf`

grep_find:                   `;yg`

buffers list:                 `;yb`

## Plugin list

```lua
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
    use {
        'numToStr/Comment.nvim'
    }
    -- 一键代码运行
    use {
        'CRAG666/code_runner.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }

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
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'nvim-treesitter/nvim-treesitter'
    use 'onsails/lspkind-nvim'

    -- git
    use 'airblade/vim-gitgutter' -- TODO: better git integration

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

    -- startup screen
--    use '~/Developer/aleph-nvim'
    use 'p-z-l/aleph-nvim'

end)
```



