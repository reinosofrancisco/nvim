require('dapui').setup()

vim.api.nvim_set_keymap("n", "<F5>", ":lua require('dapui').toggle()<CR>", {noremap = true})
-- vim.api.nvim_set_keymap("n", "<F6>", ":lua require('dapui').<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<F7>", ":DapContinue<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<F8>", ":lua require('dapui').open({reset = true})<CR>", {noremap = true})

require"dap".configurations.java = { { type = 'java'; request = 'attach'; name = "Debug (Attach) - Remote"; hostName = "127.0.0.1"; port = 5005; }, }
