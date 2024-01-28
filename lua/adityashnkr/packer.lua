vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            vim.cmd("colorscheme catppuccin-mocha")
        end,
    }
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use("mbbill/undotree")
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }

    use{"MeanderingProgrammer/dashboard.nvim" ,
        config = function()
        require('dashboard').setup({
            -- Dashboard header
            header = {},
            -- Format to display date in
            date_format = nil,
            -- List of directory paths
            directories = {},
            -- Sections to add at bottom, use function names in sections.lua
            -- For example 'version' and 'startuptime'
            footer = {},
            -- Highlight groups to use for various components
            highlight_groups = {
                header = 'Constant',
                icon = 'Type',
                directory = 'Delimiter',
                hotkey = 'Statement',
            },
        })
    end,
}
end)

