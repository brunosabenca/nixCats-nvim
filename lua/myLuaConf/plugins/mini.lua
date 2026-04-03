return {
  {
    "mini.ai",
    for_cat = "general.always",
    event = "DeferredUIEnter",
    after = function(plugin)
      require("mini.ai").setup({
        n_lines = 500,
        custom_textobjects = {
          o = require("mini.ai").gen_spec.treesitter({
            a = { "@block.outer", "@conditional.outer", "@loop.outer" },
            i = { "@block.inner", "@conditional.inner", "@loop.inner" },
          }),
          f = require("mini.ai").gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }),
          c = require("mini.ai").gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }),
        },
      })
    end,
  },
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
