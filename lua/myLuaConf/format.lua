require("lze").load({
  {
    "conform.nvim",
    for_cat = "format",
    keys = {
      { "<leader>cf", desc = "Format" },
    },
    -- colorscheme = "",
    after = function(plugin)
      local conform = require("conform")

      conform.setup({
        formatters_by_ft = {
          lua = { "stylua" },
          tf = { "terraform_fmt" },
          terraform = { "terraform_fmt" },
          hcl = { "terragrunt_hclfmt" },
          fish = { "fish_indent" },
        },
        format_on_save = {
          -- Recommended options. See :help conform.format for details.
          lsp_format = "fallback",
          timeout_ms = 500,
        },
      })

      vim.keymap.set({ "n", "v" }, "<leader>cf", function()
        conform.format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 1000,
        })
      end, { desc = "Format" })
    end,
  },
})
