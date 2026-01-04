return function(_, bufnr)
  -- we create a function that lets us more easily define mappings specific
  -- for LSP related items. It sets the mode, buffer and description for us each time.

  local map = function(keys, func, desc, modes, has)
    local opts = { buffer = bufnr, desc = desc }

    if has then
      opts.has = has
    end

    vim.keymap.set(modes or "n", keys, func, opts)
  end

  map("<leader>ca", vim.lsp.buf.code_action, "Code Action", { "n", "x" }, "codeAction")
  map("<leader>cc", vim.lsp.codelens.run, { "n", "x" }, "Run Codelens", "codeLens")
  map("<leader>cC", vim.lsp.codelens.refresh, "Refresh & Display Codelens", "codeLens")
  map("<leader>cr", vim.lsp.buf.rename, "Rename", "rename")

  if nixCats("general.telescope") then
    map("gr", function()
      require("telescope.builtin").lsp_references()
    end, "[G]oto [R]eferences")
    map("gI", function()
      require("telescope.builtin").lsp_implementations()
    end, "[G]oto [I]mplementation")
    map("<leader>ds", function()
      require("telescope.builtin").lsp_document_symbols()
    end, "[D]ocument [S]ymbols")
    map("<leader>ws", function()
      require("telescope.builtin").lsp_dynamic_workspace_symbols()
    end, "[W]orkspace [S]ymbols")
  end

  -- See `:help K` for why this keymap
  map("K", vim.lsp.buf.hover, "Hover Documentation")
  map("<C-k>", vim.lsp.buf.signature_help, "Signature Documentation")
  map("gK", vim.lsp.buf.signature_help, "Signature Help")

  map("gd", vim.lsp.buf.definition, "Goto Definition")
  map("gy", vim.lsp.buf.type_definition, "Goto T[y]pe Definition")
  map("gD", vim.lsp.buf.declaration, "Goto Declaration")

  -- map("<leader>wa", vim.lsp.buf.add_workspace_folder, "[W]orkspace [A]dd Folder")
  -- map("<leader>wr", vim.lsp.buf.remove_workspace_folder, "[W]orkspace [R]emove Folder")
  -- map("<leader>wl", function()
  --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  -- end, "[W]orkspace [L]ist Folders")

  -- Create a command `:Format` local to the LSP buffer
  vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
    vim.lsp.buf.format()
  end, { desc = "Format current buffer with LSP" })
end
