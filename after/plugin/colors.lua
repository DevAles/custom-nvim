vim.keymap.set("n", "<leader>Vc", "<cmd>lua Colorize()<CR>");

function Colorize(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    -- sets transparent background
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

Colorize()
