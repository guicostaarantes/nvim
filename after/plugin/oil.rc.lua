local status, oil = pcall(require, 'oil')
if (not status) then return end

oil.setup {
	columns = {
		"icon",
	},
	view_options = {
		show_hidden = true,
	},
}
