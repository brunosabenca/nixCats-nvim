require("nixCatsUtils.catPacker").setup({
  { "catppuccin/nvim" },
  { "BirdeeHub/lze" },
  { "BirdeeHub/lzextras" },
  { "stevearc/oil.nvim" },
  { "joshdick/onedark.vim" },
  { "nvim-tree/nvim-web-devicons" },
  { "nvim-lua/plenary.nvim" },
  { "tpope/vim-repeat" },

  { "tpope/vim-dadbod" },
  { "kristijanhusak/vim-dadbod-ui" },
  { "kristijanhusak/vim-dadbod-completion" },

  { "nvim-treesitter/nvim-treesitter-textobjects", branch = "main", opt = true },
  { "nvim-treesitter/nvim-treesitter", branch = "main", build = ":TSUpdate", opt = true },

  -- lsp
  { "williamboman/mason.nvim", opt = true },
  { "williamboman/mason-lspconfig.nvim", opt = true },
  { "j-hui/fidget.nvim", opt = true },
  { "neovim/nvim-lspconfig", opt = true },

  { "folke/lazydev.nvim", opt = true },

  -- completion
  { "L3MON4D3/LuaSnip", opt = true, as = "luasnip" },
  { "hrsh7th/cmp-cmdline", opt = true },
  { "Saghen/blink.cmp", opt = true, version = "1.*" },
  { "Saghen/blink.compat", opt = true },
  { "xzbdmw/colorful-menu.nvim", opt = true },

  -- lint and format
  { "mfussenegger/nvim-lint", opt = true },
  { "stevearc/conform.nvim", opt = true },

  -- dap
  { "nvim-neotest/nvim-nio", opt = true },
  { "rcarriga/nvim-dap-ui", opt = true },
  { "theHamsta/nvim-dap-virtual-text", opt = true },
  { "jay-babu/mason-nvim-dap.nvim", opt = true },
  { "mfussenegger/nvim-dap", opt = true },

  -- { 'm-demare/hlargs.nvim', },
  { "mbbill/undotree", opt = true },
  { "tpope/vim-fugitive", opt = true },
  { "tpope/vim-rhubarb", opt = true },
  { "tpope/vim-sleuth", opt = true },
  { "folke/which-key.nvim", opt = true },
  { "lewis6991/gitsigns.nvim", opt = true },
  { "nvim-lualine/lualine.nvim", opt = true },
  { "lukas-reineke/indent-blankline.nvim", opt = true },
  { "numToStr/Comment.nvim", opt = true, as = "comment.nvim" },
  {
    "iamcco/markdown-preview.nvim",
    build = ":call mkdp#util#install()",
    opt = true,
  },

  { "nvim-mini/mini.starter", version = false },
  { "nvim-mini/mini.surround", version = false },
  { "nvim-mini/mini.icons", version = false },
  { "nvim-mini/mini.comment", version = false },
  { "nvim-mini/mini.extra", version = false },
  { "nvim-mini/mini.ai", version = false },

  { "folke/snacks.nvim", version = false },
  { "windwp/nvim-autopairs", version = false },

  { "MagicDuck/grug-far.nvim", version = false },

  { "xiyaowong/transparent.nvim", opt = true },
  { "folke/persistence.nvim", opt = true },
  { "folke/todo-comments.nvim", opt = true },
  { "folke/flash.nvim", opt = true },
  { "mikesmithgh/kitty-scrollback.nvim", opt = true },
})
