return {
  {
    "vim-dadbod",
    event = { "DeferredUIEnter" },
    dep_of = "vim-dadbod-ui",
  },
  {
    "vim-dadbod-completion",
    dep_of = "vim-dadbod-ui",
  },
  {
    "vim-dadbod-ui",
    event = { "DeferredUIEnter" },
    after = function(plugin)
      vim.g.db_ui_use_nerd_fonts = 1
    end,
  },
}
