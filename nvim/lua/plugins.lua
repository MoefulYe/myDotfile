-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  use({ "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } })

  use("glepnir/zephyr-nvim")

  use("shaunsingh/nord.nvim")
  use("rmehri01/onenord.nvim")
  use({
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons",
  })
  use({
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
  })
  use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",
    -- or                            , branch = '0.1.x',
    requires = { { "nvim-lua/plenary.nvim" } },
  })
  use("glepnir/dashboard-nvim")
  use("ahmedkhalf/project.nvim")
  use({
    "akinsho/toggleterm.nvim",
    tag = "*",
    config = function()
      require("toggleterm").setup()
    end,
  })
  use("RRethy/vim-illuminate")
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use({ "neovim/nvim-lspconfig" })
  use({ "williamboman/mason.nvim" })
  use({ "williamboman/mason-lspconfig.nvim" })
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/vim-vsnip")
  use("hrsh7th/cmp-vsnip")
  use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
  use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
  use("hrsh7th/cmp-path") -- { name = 'path' }
  use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
  use("rafamadriz/friendly-snippets")
  use("onsails/lspkind-nvim")
  use({ "mfussenegger/nvim-dap" })
  use("lukas-reineke/indent-blankline.nvim")
  use("tami5/lspsaga.nvim")
  use({
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  })
  use("jose-elias-alvarez/null-ls.nvim")
  use("github/copilot.vim")
  use({
    "lewis6991/gitsigns.nvim",
    -- tag = 'release' -- To use the latest release
  })
  use("simrat39/rust-tools.nvim")
end)
