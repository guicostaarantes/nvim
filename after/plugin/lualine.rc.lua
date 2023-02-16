local status, lualine = pcall(require, 'lualine')
if (not status) then return end

lualine.setup {
	options = {
		icons_enabled = true,
		theme = 'solarized_dark'
	},
	sections = {
		lualine_a = {},
		lualine_b = { 'branch' },
		lualine_c = { { 'filename', path = 1 } },
		lualine_x = { 'diagnostics' },
		lualine_y = {},
		lualine_z = {}
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { { 'filename', path = 1 } },
		lualine_x = {},
		lualine_y = {},
		lualine_z = {}
	}
}
