-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
	blue     = '#80a0ff',
	cyan     = '#79dac8',
	black    = '#080808',
	white    = '#c6c6c6',
	red      = '#ff5189',
	violet   = '#d183e8',
	magenta  = '#c678dd',
	grey     = '#303030',
	darkblue = '#081633',
	yellow   = '#ECBE7B',
}

local bubbles_theme = {
	normal = {
		a = { fg = colors.black, bg = colors.violet },
		b = { fg = colors.white, bg = colors.grey },
		c = { fg = colors.black, bg = colors.darkblue },
	},

	insert = { a = { fg = colors.black, bg = colors.blue } },
	visual = { a = { fg = colors.black, bg = colors.cyan } },
	replace = { a = { fg = colors.black, bg = colors.red } },

	inactive = {
		a = { fg = colors.white, bg = colors.black },
		b = { fg = colors.white, bg = colors.black },
		c = { fg = colors.black, bg = colors.black },
	},
}


-- Default Configuration
local config = {
	options = {
		theme = bubbles_theme,
		component_separators = '|',
		section_separators = { left = '', right = '' },
	},
	sections = {
		lualine_a = {
			{ 'mode', separator = { left = '' }, right_padding = 3 },
		},
		lualine_b = { 'filename', 'branch' },
		lualine_c = {},
		lualine_x = {},
		lualine_y = { 'filetype', 'progress' },
		lualine_z = {
			{ 'location', separator = { right = '' }, left_padding = 3 },
		},
	},
	inactive_sections = {
		lualine_a = { 'filename' },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = { 'location' },
	},
	tabline = {},
	extensions = {},
}

-- Inserts a component in lualine_c
local function insert_to_lualine_c(component)
	table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_y
local function insert_to_lualine_y(component)
	table.insert(config.sections.lualine_y, component)
end

-- Insert a component in an inactive lualine_c section
local function insert_to_inactive_lualine_c(component)
	table.insert(config.inactive_sections.lualine_c, component)
end

-- Temp variable because I need it on both sections
local diagnostics = {
	'diagnostics',
	sources = { 'nvim_diagnostic' },
	symbols = { error = ' ', warn = ' ', info = ' ' },
	diagnostics_color = {
		color_error = { fg = colors.red },
		color_warn = { fg = colors.yellow },
		color_info = { fg = colors.cyan },
	},
}

-- Add Diagnostics to both active and inactive sections
insert_to_lualine_c(diagnostics)
insert_to_inactive_lualine_c(diagnostics)

insert_to_lualine_c {
	function()
		return '%= LSP'
	end,
	-- color = { fg = colors.white, gui = 'bold' },

}

-- Search LSP and return the name of the client
insert_to_lualine_c {
	function()
		local msg = 'No Active Lsp'
		local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
		local clients = vim.lsp.get_active_clients()
		if next(clients) == nil then
			return msg
		end
		for _, client in ipairs(clients) do
			local filetypes = client.config.filetypes
			if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
				return client.name
			end
		end
		return msg
	end,
	--icon = ' LSP =',
	color = { fg = colors.white, gui = 'bold' },
}

insert_to_lualine_c {
  'diff',
  -- Is it me or the symbol for modified us really weird
  symbols = { added = ' ', modified = '󰝤 ', removed = ' ' },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.orange },
    removed = { fg = colors.red },
  },
}

-- Good old Encoding
insert_to_lualine_y {
	'o:encoding',
	fmt = string.upper,
}

-- Setup Lualine with the loaded configuration
require('lualine').setup(config)
