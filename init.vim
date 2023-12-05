" For Windows 11 	- Default folder $HOME/AppData/Local/nvim

" Vim-Plug Manager for Plugins
call plug#begin('~/.local/share/nvim/site/plugged')

" Treesitter, Undotree and Fugitive
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.5' }

" THEME
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" NvimTree
Plug 'nvim-tree/nvim-web-devicons' " optional
Plug 'nvim-tree/nvim-tree.lua'

" Codeium for code assist
Plug 'Exafunction/codeium.vim', { 'branch': 'main' }

" Status bar
Plug 'vim-airline/vim-airline'

" Using my own fork so I can modify it
Plug 'reinosofrancisco/vim-gosu'

" Comments
Plug 'tpope/vim-commentary'

" Wilder
if has('nvim')
  function! UpdateRemotePlugins(...)
    " Needed to refresh runtime files
    let &rtp=&rtp
    UpdateRemotePlugins
  endfunction

  Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
else
  Plug 'gelguy/wilder.nvim'

  " To use Python remote plugin features in Vim, can be skipped
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" --- [ START OF LSP CONFIGURATIONS ] ---

"  Manage LSP servers from neovim
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

" LSP Support
Plug 'neovim/nvim-lspconfig'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'

" Lsp-Zero
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}

" --- [ END OF LSP CONFIGURATIONS ] ---

call plug#end()

" Invoke Lua Scripts
lua require('tangorf/init')
lua require('after/plugins/telescope')
lua require('after/plugins/treesitter')
lua require('after/plugins/lsp')
lua require('after/plugins/nvimtree')
lua require('after/plugins/wilder')
