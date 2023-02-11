require('custom.remap')
require('custom.set')

-- Source packer and remap
vim.cmd(":so ~/.config/nvim/lua/custom/packer.lua")
vim.cmd(":so ~/.config/nvim/lua/custom/remap.lua")
