local set = vim.keymap.set

vim.g.mapleader = ' '

-- jk to cancel insert mode
set('i', 'jk', '<Esc>')
set('t', 'jk', '<C-\\><C-n>')

-- do not add to register with x, c or d
set('n', 'x', '"_x')
set('n', 'd', '"_d')
set('n', 'D', 'd')
set('n', 'c', '"_c')
set('n', 'C', 'c')
set('v', 'x', '"_x')
set('v', 'd', '"_d')
set('v', 'D', 'd')
set('v', 'c', '"_c')
set('v', 'C', 'c')

-- save and quit buffers
set('n', '<leader>ww', ':w<Return>', { silent = true })
set('n', '<leader>qq', ':bd<Return>', { silent = true })
set('n', '<leader>q!', ':bd!<Return>', { silent = true })

-- split and move windows
set('n', '<leader>ws', ':split<Return>', { silent = true })
set('n', '<leader>wv', ':vsplit<Return>', { silent = true })
set('n', '<leader>wh', '<C-w>h', { silent = true })
set('n', '<leader>wj', '<C-w>j', { silent = true })
set('n', '<leader>wk', '<C-w>k', { silent = true })
set('n', '<leader>wl', '<C-w>l', { silent = true })
set('n', '<leader>wo', '<C-w>o', { silent = true })
set('n', '<leader>wq', ':close<Return>', { silent = true })

-- oil
set('n', '-', ':Oil %:h<Return>', { silent = true })
set('n', '<leader>e', ':Oil .<Return>', { silent = true })

-- git
set('n', '<leader>c', ':G<Return><C-w>o', { silent = true })
set('n', '<C-b>', ':Gitsigns prev_hunk<Return>', { silent = true })
set('n', '<C-n>', ':Gitsigns next_hunk<Return>', { silent = true })

-- hop
set('n', 's', ':HopWord<Return>', { silent = true })

-- telescope
set('n', '<leader>f', ':Telescope find_files<Return>', { silent = true })
set('n', '<leader>g', ':Telescope live_grep<Return>', { silent = true })
set('n', '<leader>b', ':Telescope buffers<Return>', { silent = true })
set('n', '<leader>v', ':Telescope diagnostics<Return>', { silent = true })
set('n', '<leader>s', ':Telescope resume<Return>', { silent = true })

-- lsp
set('n', '<leader>d', ':lua vim.lsp.buf.definition()<Return>', { silent = true })
set('n', '<leader>i', ':lua vim.lsp.buf.implementation()<Return>', { silent = true })
set('n', '<leader>h', ':lua vim.lsp.buf.hover()<Return>', { silent = true })
set('n', '<leader>a', ':lua vim.lsp.buf.code_action()<Return>', { silent = true })
set('n', '<leader>r', ':lua vim.lsp.buf.references()<Return>', { silent = true })
set('n', '<leader>t', ':lua vim.lsp.buf.rename()<Return>', { silent = true })
set('n', '<leader>F', ':lua vim.lsp.buf.format()<Return>', { silent = true })
set('n', '<leader>z', ':lua vim.diagnostic.goto_prev()<Return>', { silent = true })
set('n', '<leader>x', ':lua vim.diagnostic.goto_next()<Return>', { silent = true })
