local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions  
  local opts = {buffer = bufnr, remap = false}
  vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = {
    lsp_zero.default_setup,
  },
})

-- Use to configure the LSP Installed via LSP_ZERO
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
