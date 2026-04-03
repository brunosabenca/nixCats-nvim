return {
  {
    "nvim-treesitter",
    lazy = false,
    after = function(plugin)
      ---@param buf integer
      ---@param language string
      local function treesitter_try_attach(buf, language)
        -- check if parser exists and load it
        if not vim.treesitter.language.add(language) then
          return
        end
        -- enables syntax highlighting and other treesitter features
        vim.treesitter.start(buf, language)

        -- enables treesitter based folds
        vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"

        -- enables treesitter based indentation
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end

      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          local buf, filetype = args.buf, args.match
          local language = vim.treesitter.language.get_lang(filetype)
          if not language then
            return
          end

          if require("nixCatsUtils").isNixCats then
            -- withAllGrammars pre-installs all parsers; treesitter_try_attach
            -- already guards against missing parsers via language.add()
            treesitter_try_attach(buf, language)
          else
            -- non-nix: parsers must be installed on demand
            local ts = require("nvim-treesitter")
            if vim.tbl_contains(ts.get_installed("parsers"), language) then
              treesitter_try_attach(buf, language)
            elseif vim.tbl_contains(ts.get_available(), language) then
              ts.install(language):await(function()
                treesitter_try_attach(buf, language)
              end)
            else
              treesitter_try_attach(buf, language)
            end
          end
        end,
      })
    end,
  },
  {
    "nvim-treesitter-textobjects",
    lazy = false,
    before = function(plugin)
      -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects/tree/main?tab=readme-ov-file#using-a-package-manager
      -- Disable entire built-in ftplugin mappings to avoid conflicts.
      -- See https://github.com/neovim/neovim/tree/master/runtime/ftplugin for built-in ftplugins.
      vim.g.no_plugin_maps = true

      -- Or, disable per filetype (add as you like)
      -- vim.g.no_python_maps = true
      -- vim.g.no_ruby_maps = true
      -- vim.g.no_rust_maps = true
      -- vim.g.no_go_maps = true
    end,
    after = function(plugin)
      -- keymaps
      -- You can use the capture groups defined in `textobjects.scm`
      vim.keymap.set({ "x", "o" }, "am", function()
        require("nvim-treesitter-textobjects.select").select_textobject("@function.outer", "textobjects")
      end)
      vim.keymap.set({ "x", "o" }, "im", function()
        require("nvim-treesitter-textobjects.select").select_textobject("@function.inner", "textobjects")
      end)
      vim.keymap.set({ "x", "o" }, "ac", function()
        require("nvim-treesitter-textobjects.select").select_textobject("@class.outer", "textobjects")
      end)
      vim.keymap.set({ "x", "o" }, "ic", function()
        require("nvim-treesitter-textobjects.select").select_textobject("@class.inner", "textobjects")
      end)
      -- You can also use captures from other query groups like `locals.scm`
      vim.keymap.set({ "x", "o" }, "as", function()
        require("nvim-treesitter-textobjects.select").select_textobject("@local.scope", "locals")
      end)

      -- NOTE: for more textobjects options, see the following link.
      -- This template is using the new `main` branch of the repo.
      -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects/tree/main
    end,
  },
}
