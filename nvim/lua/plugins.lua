-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use { "ellisonleao/gruvbox.nvim",
		requires={"rktjmp/lush.nvim"}
	}

	use 'glepnir/zephyr-nvim'

	use 'shaunsingh/nord.nvim'
  use 'rmehri01/onenord.nvim'
	use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
  use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use("glepnir/dashboard-nvim")
  use("ahmedkhalf/project.nvim")
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
  end}
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
      use("williamboman/nvim-lsp-installer")
    -- Lspconfig
  use({ "neovim/nvim-lspconfig" })
end)
