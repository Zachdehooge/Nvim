-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        "jiriks74/presence.nvim",
        event = "UIEnter",
    }

    use {'morhetz/gruvbox', config = function() vim.cmd.colorscheme("gruvbox") end }

    use ('andweeb/presence.nvim')


    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('ThePrimeagen/harpoon')

    use('nvim-treesitter/playground')

    use ('mbbill/undotree')

    use ('ray-x/go.nvim')


    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            -- {'williamboman/mason.nvim'},
            -- {'williamboman/mason-lspconfig.nvim'},

            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    use {
        'chikko80/error-lens.nvim',
        requires = {'nvim-telescope/telescope.nvim'}
    }

    require("error-lens").setup(client, {
        -- your options go here
    })

end)
