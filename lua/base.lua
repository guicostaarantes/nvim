vim.cmd('autocmd!')

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.signcolumn = 'yes'
vim.opt.hlsearch = false
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.mouse = ''
vim.opt.cmdheight = 0
vim.opt.laststatus = 2
vim.opt.scrolloff = 12
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.shell = vim.fn.has('win32') == 1 and 'cmd' or 'zsh'
vim.opt.smartcase = true
vim.opt.updatetime = 1000
vim.opt.cursorline = false
vim.opt.termguicolors = true
vim.opt.listchars = 'tab:» ,extends:›,precedes:‹,nbsp:#';
