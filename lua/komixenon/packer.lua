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
    -- FOR TeX
    use {'lervag/vimtex'}
    --
    use {'mbbill/undotree'}
    use {'tpope/vim-fugitive'}
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use {"lewis6991/gitsigns.nvim"}
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    }
    use 'nvimtools/none-ls.nvim'

    -- LLM FIM
    use{'ggml-org/llama.vim'}

    -- Postman
    -- use{'rest-nvim/rest.nvim'}

end)
