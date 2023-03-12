require('telescope').load_extension('projects')
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>fw', function()
    builtin.grep_string({ search = vim.fn.input("Find Word > ") });
end)
