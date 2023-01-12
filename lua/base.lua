vim.cmd('autocmd!')

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.signcolumn = 'yes'
vim.opt.hlsearch = false
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.scrolloff = 12
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.shell = vim.fn.has('win32') == 1 and 'cmd' or 'zsh'
vim.opt.ignorecase = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.updatetime = 100
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.list = true
vim.opt.listchars = 'tab:» ,extends:›,precedes:‹,nbsp:#,space:·';
vim.opt.guifont = { "Iosevka Term", ":h14" }
