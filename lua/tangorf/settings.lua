-- Catppuccin Colorscheme and settings
require('catppuccin').setup({
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	transparent_background = true, --Disabled for now as it breaks some integrations
})

vim.cmd("colorscheme catppuccin")

vim.cmd("syntax on")
vim.cmd("set noshowmode")

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.nu = true

-- Tabs
-- vim.opt.tabstop = 4
-- vim.opt.softtabstop = 4
-- vim.opt.shiftwidth = 4

-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- vim.opt.colorcolumn = "80"
vim.opt.relativenumber = true

-- Uncomment to set transparency to none
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
