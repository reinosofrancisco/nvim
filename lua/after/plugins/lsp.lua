-- Configure LSP-ZERO
local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	local opts = { buffer = bufnr, remap = false }
	lsp_zero.default_keymaps({ buffer = bufnr })

	local bind = vim.keymap.set

	bind('n', '<C-l>', '<cmd>lua vim.lsp.buf.format()<cr>', opts)

	-- Java LSP has a different setup for DAP
	if client.name == "jdt.ls" then
		require("jdtls").setup_dap { hotcodereplace = "auto" }
		require("jdtls.dap").setup_dap_main_class_configs()
	end
end)

-- Set up the lua_ls language server specifics
require('lspconfig').lua_ls.setup({
	settings = {
		Lua = {
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { 'vim' }
			}
		}
	}
})

-- Mason Setup
require('mason').setup({})
require('mason-lspconfig').setup({
	-- Add this only on Specific Setups
	ensure_installed = { 'tsserver', 'jdtls' },
	handlers = {
		lsp_zero.default_setup,
		jdtls = lsp_zero.noop, -- Disable Jdtls
	},
})
