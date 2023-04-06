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
    use { 'numToStr/Comment.nvim' }

    use({
        "jackMort/ChatGPT.nvim",
        commit = '8820b99c',
        requires = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim"
        }
    })

    use { "folke/which-key.nvim", }
    use { 'christoomey/vim-tmux-navigator' }
    use { 'airblade/vim-rooter' }
    use { "ahmedkhalf/project.nvim" }
    use { "rafamadriz/friendly-snippets" }

    -- Disable codeium (using Github Copilot now <3)
    -- use { 'Exafunction/codeium.vim' }

    use { "github/copilot.vim" }
    use { "tpope/vim-fugitive" }
    use { "mbbill/undotree" }
end)
