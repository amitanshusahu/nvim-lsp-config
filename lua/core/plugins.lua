-- PLUGIN MANNAGER - PACKER.NVIM
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	-- nvim.tree file explorer
	use 'nvim-tree/nvim-tree.lua'
	-- icons
	use 'nvim-tree/nvim-web-devicons'
	-- lualine
	use'nvim-lualine/lualine.nvim'
	-- treesitter
	use 'nvim-treesitter/nvim-treesitter'
	-- telescope fuzzy finder
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- colorscheme
	use 'Mofiqul/dracula.nvim'
	-- indent blankline
	use "lukas-reineke/indent-blankline.nvim"
	-- bufferline
	use "akinsho/bufferline.nvim"
    -- autopari
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
	-- lsp
    use{
        {'neovim/nvim-lspconfig'},
        {
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'},
    }	
  -- autocompletion
  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
  }
	-- snippets
	use{
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
	}
  use "rafamadriz/friendly-snippets"
end)
