" For Ubuntu		- Default Folder $HOME/.config/nvim
" For Windows 10 	- Default folder $HOME/AppData/Local/nvim

call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }

Plug 'mbbill/undotree'

" --- [ START OF LSP CONFIGURATIONS ] ---
"  Uncomment these if you want to manage LSP servers from neovim
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

" LSP Support
Plug 'neovim/nvim-lspconfig'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'

Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}

" THEME
Plug 'folke/tokyonight.nvim'

call plug#end()

lua require('tangorf/init')
lua require('after/plugins/telescope')
lua require('after/plugins/treesitter')
lua require('after/plugins/lsp')
