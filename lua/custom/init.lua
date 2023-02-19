require('custom.remap')
require('custom.set')

-- Source packer and remap
vim.cmd(":so ~/.config/nvim/lua/custom/packer.lua")
vim.cmd(":so ~/.config/nvim/lua/custom/remap.lua")

-- Run :Ex in startup if run nvim without parameters
if vim.fn.argc() == 0 then
    vim.cmd("autocmd VimEnter * :Ex")
end

vim.g.neoformat_enabled = {
  c = {'clangformat'},
  cpp = {'clangformat'},
  rs = {'rustfmt'},
  typescript = {'prettier'},
  javascript = {'prettier'},
  typescriptreact = {'prettier'},
  javascriptreact = {'prettier'},
}

-- Set up an autocommand to format the buffer on write
vim.cmd([[
  augroup Format
    autocmd!
    autocmd BufWritePre *.c,*.cpp,*.rs undojoin | Neoformat
  augroup END
]])

-- Set up coc-prettier to format TypeScript and JavaScript files
vim.api.nvim_command('autocmd BufWritePre *.ts,*.tsx,*.js,*.jsx :call CocAction("format")')

