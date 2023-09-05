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
		'svelte',
		'tsx',
		'terraform',
		'typescript',
		'yaml'
	},
	autotag = {
		enable = true
	}
}
