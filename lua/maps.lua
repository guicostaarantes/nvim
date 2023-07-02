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

-- first level keybindings
set('n', '-', '<cmd>lua require("oil").open()<cr>', {
	silent = true,
	desc = 'Explore directory of current buffer',
})
set('n', 's', '<cmd>HopChar1<cr>', { silent = true, desc = 'Jump to char' })
set('v', 's', '<cmd>HopChar1<cr>', { silent = true, desc = 'Jump to char' })

-- after/plugin/which-key.rc.lua for maps that start with the leader key
