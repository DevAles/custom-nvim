-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- plugins and themes
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use { 'junegunn/fzf.vim' }
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            require("rose-pine").setup()
            vim.cmd('colorscheme rose-pine')
        end
    })
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'nvim-treesitter/playground' }
    use { 'neoclide/coc.nvim', branch = 'release' }

    use { "akinsho/toggleterm.nvim", tag = '*' }
    use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
    use { "windwp/nvim-autopairs" }
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use({
        "jackMort/ChatGPT.nvim",
        commit = '8820b99c',
        config = function()
            require("chatgpt").setup({
                -- optional configuration
            })
        end,
        requires = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim"
        }
    })
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    use { 'christoomey/vim-tmux-navigator' }
    use { 'airblade/vim-rooter' }
    use {
        "ahmedkhalf/project.nvim",
        config = function()
            require("project_nvim").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    use "rafamadriz/friendly-snippets"

    -- Disable codeium (using Github Copilot now <3)
    -- use {
    --     'Exafunction/codeium.vim',
    --     config = function()
    --         -- Change '<C-g>' here to any keycode you like.
    --         vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true })
    --         vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
    --         vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
    --         vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
    --     end
    -- }

    use { "github/copilot.vim" }
    use { "tpope/vim-fugitive" }
    use { "mbbill/undotree" }
end)
