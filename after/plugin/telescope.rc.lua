local status, telescope = pcall(require, 'telescope')
if (not status) then return end

local actions = require('telescope.actions')

telescope.setup {
	defaults = {
		mappings = {
			n = {
        q = actions.delete_buffer
			}
		},
	},
	pickers = {
		find_files = {
		theme = 'ivy',
			layout_config = {
				height = 30
			}
		},
		live_grep = {
			theme = 'ivy',
			layout_config = {
				height = 30
			}
		},
		buffers = {
			theme = 'ivy',
			layout_config = {
				height = 30
			},
			sort_mru = true,
			on_complete = { function() vim.cmd"stopinsert" end }
		},
	},
}
