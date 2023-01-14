local status, oil = pcall(require, 'oil')
if (not status) then return end

oil.setup{
	columns = {
		"icon",
		"permissions",
		"size",
	},
	view_options = {
		show_hidden = true,
	},
}
