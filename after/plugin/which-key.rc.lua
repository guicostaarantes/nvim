local status, which = pcall(require, 'which-key')
if (not status) then return end

vim.o.timeout = true
vim.o.timeoutlen = 1000
which.setup {}
