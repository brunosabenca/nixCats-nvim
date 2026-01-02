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
    keys = {
      {
        "<leader>fb",
        "<cmd>Pick buffers<CR>",
        mode = { "n" },
        desc = "Buffers",
      },
      {
        "<leader>ff",
        "<cmd>Pick files<CR>",
        mode = { "n" },
        desc = "Find Files",
      },
      {
        "<leader>sb",
        "<cmd>Pick buf_lines scope='current'<CR>",
        mode = { "n" },
        desc = "Buffer Lines",
      },
      {
        "<leader>s/",
        "<cmd>Pick buf_lines<CR>",
        mode = { "n" },
        desc = "Buffer Lines (All)",
      },
      {
        "<leader>sh",
        "<cmd>Pick help<CR>",
        mode = { "n" },
        desc = "Help",
      },
      {
        "<leader>sg",
        "<cmd>Pick grep_live<CR>",
        mode = { "n" },
        desc = "Grep",
      },
      {
        "<leader>sr",
        "<cmd>Pick diagnostic<CR>",
        mode = { "n" },
        desc = "Diagnostics",
      },
      {
        "<leader>sk",
        "<cmd>Pick keymaps<CR>",
        mode = { "n" },
        desc = "Keymaps",
      },
      {
        "<leader>sr",
        "<cmd>Pick resume<CR>",
        mode = { "n" },
        desc = "Resume",
      },
      {
        "<leader>sl",
        "<cmd>Pick list scope='location'<CR>",
        mode = { "n" },
        desc = "Location List",
      },
      {
        "<leader>sl",
        "<cmd>Pick list scope='quickfix'<CR>",
        mode = { "n" },
        desc = "Quickfix List",
      },
    },
  },
}
