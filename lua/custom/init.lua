require('custom.remap')
require('custom.set')

-- Run :Ex in startup if run nvim without parameters
if vim.fn.argc() == 0 then
  vim.cmd("autocmd VimEnter * :Ex")
end
