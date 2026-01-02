return {
  -- {
  --   'mini.starter',
  --   for_cat = 'general.always',
  --   after = function(plugin)
  --     require('mini.starter').setup()
  --   end,
  -- },
  {
    "mini.surround",
    for_cat = "general.always",
    event = "DeferredUIEnter",
    after = function(plugin)
      require("mini.surround").setup({
        mappings = {
          add = "gsa", -- Add surrounding in Normal and Visual modes
          delete = "gsd", -- Delete surrounding
          find = "gsf", -- Find surrounding (to the right)
          find_left = "gsF", -- Find surrounding (to the left)
          highlight = "gsh", -- Highlight surrounding
          replace = "gsr", -- Replace surrounding
        },
      })
    end,
  },
  {
    "mini.comment",
    for_cat = "general.always",
    event = "DeferredUIEnter",
    after = function(plugin)
      require("mini.comment").setup()
    end,
  },
}
