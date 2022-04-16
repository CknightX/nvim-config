# CK's Neovim Config

## Setup
1. Use the latest version of NeoVim
1. Install packer.nvim by following the [official instructions](https://github.com/wbthomason/packer.nvim#quickstart)
1. Clone this repo
   1. Windows: `git clone https://github.com/cknightx/nvim-config.git %USERPROFILE%/AppData/Local/nvim`
   1. Linux: `git clone https://github.com/cknightx/nvim-config.git ~/.config/nvim`
1. Run `:PackerInstall`, if it failed try again
1. LSP config
   * Fill in the lang need to support in `lua/configs/autocomplete.lua`, then install the language server. For a list of language servers, see [here](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)
1. Treesitter config
   * Install a parser for a lang by `:TSInstall <lang>` or fill in the `lua/configs/treesitter.lua`
1.  install [nerd font](https://github.com/laishulu/Sarasa-Mono-SC-Nerd) to ensure the correct display of special symbols

## Usage
Use `;` as leader key<br/>
You can get all the keymap from `lua/configs/whichkey.lua` & `lua/core/keymaps.lua`.
