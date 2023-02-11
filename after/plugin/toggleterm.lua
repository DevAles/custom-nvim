require("toggleterm").setup{
	size = 20,
	direction = "float",
	insert_mappings = true
}

vim.keymap.set("n", "<F7>", ":ToggleTerm \n")
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]]) --
