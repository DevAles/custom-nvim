-- Number of lines 
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tab
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Identation
vim.opt.smartindent = true

-- Line wrap
vim.opt.wrap = false

-- Backup, swap and undo 
vim.opt.swapfile = false
vim.opt.backup = false 
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Highlight in searchs 
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Terminal GUI colorscheme
vim.opt.termguicolors = true

-- Scroll off
vim.opt.scrolloff = 8

-- File Naming and Sign Column
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Update time
vim.opt.updatetime = 50

-- Set column position
vim.opt.colorcolumn = "80"

-- Set leader key
vim.g.mapleader = " "

-- Set clipboard
vim.g.clipboard = "unnamedplus"
