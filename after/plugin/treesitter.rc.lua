local status, tree = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

tree.setup {
	highlight = {
		enable = true,
		disable = {}
	},
	indent = {
		enable = true,
		disable = {}
	},
	ensure_installed = {
		'css',
		'go',
		'graphql',
		'javascript',
		'json',
		'kotlin',
		'lua',
		'rust',
		'tsx',
		'typescript'
	},
	autotag = {
		enable = true
	}
}
