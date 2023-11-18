local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
vim.keymap.set('n', '<leader>gg', builtin.live_grep, {})
