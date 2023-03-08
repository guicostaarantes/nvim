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
		'hcl',
		'kotlin',
		'lua',
		'rust',
		'tsx',
		'terraform',
		'typescript'
	},
	autotag = {
		enable = true
	}
}
