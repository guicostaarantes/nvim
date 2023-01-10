local status, lsp = pcall(require, 'lspconfig')
if (not status) then return end

-- Visit the page below to find lsp config for languages
-- https://github.com/neovim/nvim-lspconfig/tree/master/lua/lspconfig/server_configurations

-- Javascript and Typescript
lsp.tsserver.setup {
	cmd = { 'typescript-language-server', '--stdio' },
	on_attach = function()
		vim.api.nvim_command [[augroup Format]]
		vim.api.nvim_command [[autocmd! * <buffer>]]
		vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
		vim.api.nvim_command [[augroup END]]
	end
}
lsp.eslint.setup {
	on_attach = function()
		vim.api.nvim_command [[augroup Format]]
		vim.api.nvim_command [[autocmd! * <buffer>]]
		vim.api.nvim_command [[autocmd BufWritePre <buffer> :EslintFixAll]]
		vim.api.nvim_command [[augroup END]]
	end
}

-- Lua
lsp.sumneko_lua.setup {
	on_attach = function()
		vim.api.nvim_command [[augroup Format]]
		vim.api.nvim_command [[autocmd! * <buffer>]]
		vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
		vim.api.nvim_command [[augroup END]]
	end,
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file('', true),
				checkThirdParty = false
			}
		}
	}
}

-- Rust
lsp.rust_analyzer.setup {
	on_attach = function()
		vim.api.nvim_command [[augroup Format]]
		vim.api.nvim_command [[autocmd! * <buffer>]]
		vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
		vim.api.nvim_command [[augroup END]]
	end
}

-- Terraform
lsp.terraformls.setup {}
lsp.tflint.setup {
	-- on_attach = function()
	-- 	vim.api.nvim_command [[augroup Format]]
	-- 	vim.api.nvim_command [[autocmd! * <buffer>]]
	-- 	vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
	-- 	vim.api.nvim_command [[augroup END]]
	-- end
}
