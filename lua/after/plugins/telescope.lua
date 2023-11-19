local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>gg', builtin.live_grep, {})

local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

telescope.setup({
	defaults = {
		layout_strategy = 'vertical',
		layout_config = {
			-- width = 0.5,
			prompt_position = 'top',
			mirror = true,

		},
	},
})

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
telescope.load_extension('fzf')
