local status, packer = pcall(require, 'packer')
if (not status) then
	print('Packer is not installed')
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'navarasu/onedark.nvim'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/nvim-cmp'
	use 'L3MON4D3/LuaSnip'
	use 'mfussenegger/nvim-dap'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use {
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' }
	}
	use {
		'lambdalisue/fern.vim',
		requires = {
			'lambdalisue/nerdfont.vim',
			'lambdalisue/fern-renderer-nerdfont.vim',
			'lambdalisue/fern-hijack.vim',
			'lambdalisue/fern-git-status.vim'
		}
	}
	use 'tpope/vim-commentary'
	use 'tpope/vim-fugitive'
	use 'tpope/vim-sleuth'
	use 'lewis6991/gitsigns.nvim'
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})
end)
