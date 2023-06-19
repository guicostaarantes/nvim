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
set('n', 'Y', '"+y')
set('v', 'x', '"_x')
set('v', 'd', '"_d')
set('v', 'D', 'd')
set('v', 'c', '"_c')
set('v', 'C', 'c')
set('v', 'Y', '"+y')

-- save and quit buffers
set('n', '<leader>ww', '<cmd>w<Return>', { silent = true })
set('n', '<leader>qq', '<cmd>w<Return><cmd>bd<Return>', { silent = true })
set('n', '<leader>q!', '<cmd>bd!<Return>', { silent = true })

-- split and move windows
set('n', '<leader>ws', '<cmd>split<Return>', { silent = true })
set('n', '<leader>wv', '<cmd>vsplit<Return>', { silent = true })
set('n', '<leader>wh', '<C-w>h', { silent = true })
set('n', '<leader>wj', '<C-w>j', { silent = true })
set('n', '<leader>wk', '<C-w>k', { silent = true })
set('n', '<leader>wl', '<C-w>l', { silent = true })
set('n', '<leader>wo', '<C-w>o', { silent = true })
set('n', '<leader>wc', '<cmd>close<Return>', { silent = true })

-- oil
set('n', '-', '<cmd>lua require("oil").open()<Return>', { silent = true })
set('n', '<leader>e', '<cmd>Oil .<Return>', { silent = true })

-- git
set('n', '<leader>c', '<cmd>G<Return><C-w>o', { silent = true })
set('n', '<C-b>', '<cmd>Gitsigns prev_hunk<Return>', { silent = true })
set('n', '<C-n>', '<cmd>Gitsigns next_hunk<Return>', { silent = true })

-- hop
set('n', 's', '<cmd>HopWordMW<Return>', { silent = true })
set('v', 's', '<cmd>HopWordMW<Return>', { silent = true })

-- telescope
set('n', '<leader>f', '<cmd>Telescope find_files<Return>', { silent = true })
set('n', '<leader>g', '<cmd>Telescope live_grep<Return>', { silent = true })
set('n', '<leader>b', '<cmd>Telescope buffers<Return>', { silent = true })
set('n', '<leader>v', '<cmd>Telescope diagnostics<Return>', { silent = true })
set('n', '<leader>s', '<cmd>Telescope resume<Return>', { silent = true })

-- lsp
set('n', '<leader>d', '<cmd>lua vim.lsp.buf.definition()<Return>', { silent = true })
set('n', '<leader>i', '<cmd>lua vim.lsp.buf.implementation()<Return>', { silent = true })
set('n', '<leader>h', '<cmd>lua vim.lsp.buf.hover()<Return>', { silent = true })
set('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<Return>', { silent = true })
set('n', '<leader>r', '<cmd>lua vim.lsp.buf.references()<Return>', { silent = true })
set('n', '<leader>t', '<cmd>lua vim.lsp.buf.rename()<Return>', { silent = true })
set('n', '<leader>F', '<cmd>lua vim.lsp.buf.format()<Return>', { silent = true })
set('n', '<leader>z', '<cmd>lua vim.diagnostic.goto_prev()<Return>', { silent = true })
set('n', '<leader>x', '<cmd>lua vim.diagnostic.goto_next()<Return>', { silent = true })
