-- vim.keymap.set(vim_mode, keybinding, command)

-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Go to root of current folder
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) 

-- Keep the cursor in same position when use J
vim.keymap.set("n", "J", "mzJ`z")

-- Keep the cursor in middle of screen in Ctrl-D/Ctrl-U
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Search statements keeping the cursor in middle of screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "nzzzv")

-- Replace the word that i was on
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w\\>/<C-r><C-w>/gI<Left><Left>")

-- Set executable permission to a file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- ToggleTerm
vim.keymap.set("n", "<F7>", ":ToggleTerm \n")
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]]) -- Go to normal mode
