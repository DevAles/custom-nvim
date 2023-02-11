require('custom.remap')
require('custom.set')

-- Source packer and remap
vim.cmd(":so ~/.config/nvim/lua/custom/packer.lua")
vim.cmd(":so ~/.config/nvim/lua/custom/remap.lua")

-- Run :Ex in startup if run nvim without parameters
if vim.fn.argc() == 0 then
  vim.cmd("autocmd VimEnter * :Ex")
end
