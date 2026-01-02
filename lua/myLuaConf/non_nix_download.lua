-- load the plugins via paq-nvim when not on nix
-- YOU are in charge of putting the plugin
-- urls and build steps in here, which will only be used when not on nix.
-- and you should keep any setup functions OUT of this file

-- again, you dont need this file if you only use nix to load the config,
-- this is a fallback only, and is optional.

-- @todo test this conditonal loading
--local conditionalPlugins = {}

--if nixCats 'general.mini-pick' then
--  table.insert(conditionalPlugins, { 'nvim-mini/mini.pick', version = false })
--end
--
--if nixCats 'general.telescope' then
--  table.insert(conditionalPlugins, { 'nvim-telescope/telescope-fzf-native.nvim', build = ':!which make && make', opt = true })
--  table.insert(conditionalPlugins, { 'nvim-telescope/telescope-ui-select.nvim', opt = true })
--  table.insert(conditionalPlugins, { 'nvim-telescope/telescope.nvim', opt = true })
--end

require("nixCatsUtils.catPacker").setup({
  --[[ ------------------------------------------ ]]
  --[[ The way to think of this is, its very      ]]
  --[[ similar to the main nix file for nixCats   ]]
  --[[                                            ]]
  --[[ It can be used to download your plugins,   ]]
  --[[ and it has an opt for optional plugins.    ]]
  --[[                                            ]]
  --[[ We dont want to handle anything about      ]]
  --[[ loading those plugins here, so that we can ]]
  --[[ use the same loading code that we use for  ]]
  --[[ our normal nix-loaded config.              ]]
  --[[ we will do all our loading and configuring ]]
  --[[ elsewhere in our configuration, so that    ]]
  --[[ we dont have to write it twice.            ]]
  --[[ ------------------------------------------ ]]

  { "catppuccin/nvim" },
  { "BirdeeHub/lze" },
  { "BirdeeHub/lzextras" },
  { "stevearc/oil.nvim" },
  { "joshdick/onedark.vim" },
  { "nvim-tree/nvim-web-devicons" },
  { "nvim-lua/plenary.nvim" },
  { "tpope/vim-repeat" },
  { "rcarriga/nvim-notify" },

  { "nvim-treesitter/nvim-treesitter-textobjects", branch = "master", opt = true },
  { "nvim-treesitter/nvim-treesitter", branch = "master", build = ":TSUpdate", opt = true },

  -- lsp
  { "williamboman/mason.nvim", opt = true },
  { "williamboman/mason-lspconfig.nvim", opt = true },
  { "j-hui/fidget.nvim", opt = true },
  { "neovim/nvim-lspconfig", opt = true },

  --  NOTE:  we take care of lazy loading elsewhere in an autocommand
  -- so that we can use the same code on and off nix.
  -- so here we just tell it not to auto load it
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

  { "folke/snacks.nvim", version = false },
  { "windwp/nvim-autopairs", version = false },

  -- all the rest of the setup will be done using the normal setup functions later,
  -- thus working regardless of what method loads the plugins.
  -- only stuff pertaining to downloading should be added to paq.
})
-- OK, again, that isnt needed if you load this setup via nix, but it is an option.
