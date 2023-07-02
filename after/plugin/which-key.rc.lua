local status, which = pcall(require, 'which-key')
if (not status) then return end

vim.o.timeout = true
vim.o.timeoutlen = 1000
which.setup {}

which.register({
	['<leader>'] = {
		Q = { '<cmd>bd!<cr>', 'Quit buffer (discard unsaved changes)' },
		q = { '<cmd>w<cr><cmd>bd<cr>', 'Save and quit buffer' },
		e = { '<cmd>Oil .<cr>', 'Explore project directory' },
		r = { '<cmd>Telescope oldfiles<cr>', 'Open recent buffer' },
		t = { '<cmd>term<cr>', 'Open new terminal buffer' },
		y = { '<cmd>lua vim.lsp.buf.format()<cr>', 'Format document' },
		u = { '<cmd>lua vim.lsp.buf.references()<cr>', 'List references' },
		i = { '<cmd>lua vim.lsp.buf.rename()<cr>', 'Rename symbol' },
		-- o = {},
		-- p = {},
		a = { '<cmd>wa<cr>', 'Save all buffers' },
		s = { '<cmd>w<cr>', 'Save buffer' },
		d = { '<cmd>lua vim.lsp.buf.definition()<cr>', 'Jump to definition' },
		f = { '<cmd>Telescope find_files<cr>', 'Search file in current directory' },
		g = { '<cmd>Telescope live_grep<cr>', 'Search file content in current directory' },
		h = { '<cmd>lua vim.lsp.buf.hover()<cr>', 'Show documentation' },
		j = { '<cmd>Gitsigns next_hunk<cr>', 'Jump to next git hunk' },
		k = { '<cmd>Gitsigns prev_hunk<cr>', 'Jump to previous git hunk' },
		-- l = {},
		z = { '<cmd>lua vim.lsp.buf.code_action()<cr>', 'Show possible actions' },
		x = { '<cmd>lua vim.diagnostic.goto_prev()<cr>', 'Jump to previous diagnostic' },
		c = { '<cmd>lua vim.diagnostic.goto_next()<cr>', 'Jump to next diagnostic' },
		v = { '<cmd>Telescope diagnostics<cr>', 'List diagnostics' },
		b = { '<cmd>Telescope buffers<cr>', 'List buffers' },
		n = { '<cmd>G<cr><C-w>o', 'Open git client' },
		m = { '<cmd>Telescope resume<cr>', 'Back to Telescope panel' },
		w = {
			name = '+windows',
			s = { '<cmd>split<cr>', 'Create new window below' },
			v = { '<cmd>vsplit<cr>', 'Create new window to the right' },
			h = { '<C-w>h', 'Navigate to window in the left' },
			j = { '<C-w>j', 'Navigate to window below' },
			k = { '<C-w>k', 'Navigate to window above' },
			l = { '<C-w>l', 'Navigate to window in the right' },
			o = { '<C-w>o', 'Close all other windows' },
			c = { '<C-w>c', 'Close this window' },
		},
	},
})
