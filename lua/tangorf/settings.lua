-- Catppuccin Colorscheme and settings
require('catppuccin').setup({
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	transparent_background = true,
})

-- vim.cmd("colorscheme tokyonight-night")
vim.cmd("colorscheme catppuccin")
-- vim.cmd("set number")
vim.cmd("syntax on")

-- vim.cmd("set autochdir")

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.nu = true

-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- vim.opt.colorcolumn = "80"

-- vim.opt.relativenumber = true

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })


