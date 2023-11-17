" For Ubuntu		- Default Folder $HOME/.config/nvim
" For Windows 10 	- Default folder $HOME/AppData/Local/nvim

" Vim-Plug Manager for Plugins
call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': 'release' }

Plug 'mbbill/undotree'

" Git Wrapper - So far I'm not really using it. Just :!git
" Plug 'tpope/vim-fugitive'

" THEME
Plug 'folke/tokyonight.nvim'

Plug 'nvim-tree/nvim-web-devicons' " optional
Plug 'nvim-tree/nvim-tree.lua'


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

Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}

" --- [ END OF LSP CONFIGURATIONS ] ---
call plug#end()

lua require('tangorf/init')
lua require('after/plugins/telescope')
lua require('after/plugins/treesitter')
lua require('after/plugins/lsp')
lua require('after/plugins/nvimtree')