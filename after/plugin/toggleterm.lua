vim.keymap.set("n", "<C-t>", "<cmd>ToggleTerm<CR>")
vim.keymap.set("t", "<C-t>", "<cmd>ToggleTerm<CR>")
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]]) -- Go to normal mode

require("toggleterm").setup {
    size = 20,
    direction = "float",
    insert_mappings = true
}
