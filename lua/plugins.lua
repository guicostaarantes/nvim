local status, packer = pcall(require, 'packer')
if (not status) then
	print('Packer is not installed')
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'navarasu/onedark.nvim'
	use 'nvim-lualine/lualine.nvim'
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/nvim-cmp'
	use 'L3MON4D3/LuaSnip'
	use 'folke/which-key.nvim'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use {
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' }
	}
	use 'phaazon/hop.nvim'
	use 'lewis6991/gitsigns.nvim'
	use {
		'stevearc/oil.nvim',
		requires = { 'nvim-tree/nvim-web-devicons' }
	}
	use 'tpope/vim-fugitive'
	use 'sheerun/vim-polyglot'
	use 'tpope/vim-commentary'
end)
