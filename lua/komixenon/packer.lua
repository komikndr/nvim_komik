-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use ('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})
    use 'tanvirtin/monokai.nvim'
    use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }
    use {'mbbill/undotree'}
    use {'tpope/vim-fugitive'}
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            -- {'williamboman/mason.nvim'},
            -- {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            { 'hrsh7th/nvim-cmp'},
            { 'hrsh7th/cmp-nvim-lsp'},
            { 'hrsh7th/cmp-buffer'  },
            { 'hrsh7th/cmp-path'    },
            { 'hrsh7th/cmp-cmdline' },
            {"saadparwaiz1/cmp_luasnip"},
            {'L3MON4D3/LuaSnip'},
        }

    }
    use {"lewis6991/gitsigns.nvim"}
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    -- Prettier
    use{'jose-elias-alvarez/null-ls.nvim'}
    use{'MunifTanjim/prettier.nvim'}

end)
