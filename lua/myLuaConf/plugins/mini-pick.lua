return {
  {
    "mini.icons",
    for_cat = "general.always",
    event = "DeferredUIEnter",
    after = function(plugin)
      require("mini.icons").setup()
    end,
  },
  {
    "mini.extra",
    for_cat = "general.always",
    event = "DeferredUIEnter",
    after = function(plugin)
      require("mini.extra").setup()
    end,
  },
  {
    "mini.pick",
    for_cat = "general.always",
    event = "DeferredUIEnter",
    after = function(plugin)
      require("mini.pick").setup()
    end,
  },
}
