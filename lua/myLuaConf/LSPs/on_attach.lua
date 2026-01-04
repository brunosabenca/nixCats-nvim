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

  -- Goto Definition
  Snacks.keymap.set("n", "gd", vim.lsp.buf.definition, {
    desc = "Goto Definition",
    has = "definition",
  })

  -- References
  Snacks.keymap.set("n", "gr", vim.lsp.buf.references, {
    desc = "References",
    nowait = true,
  })

  -- Goto Implementation
  Snacks.keymap.set("n", "gI", vim.lsp.buf.implementation, {
    desc = "Goto Implementation",
  })

  -- Goto Type Definition
  Snacks.keymap.set("n", "gy", vim.lsp.buf.type_definition, {
    desc = "Goto T[y]pe Definition",
  })

  -- Goto Declaration
  Snacks.keymap.set("n", "gD", vim.lsp.buf.declaration, {
    desc = "Goto Declaration",
  })

  -- Hover Information
  Snacks.keymap.set("n", "K", function()
    return vim.lsp.buf.hover()
  end, {
    desc = "Hover",
  })

  -- Signature Help (Normal Mode)
  Snacks.keymap.set("n", "gK", function()
    return vim.lsp.buf.signature_help()
  end, {
    desc = "Signature Help",
    has = "signatureHelp",
  })

  -- Signature Help (Insert Mode)
  Snacks.keymap.set("i", "<c-k>", function()
    return vim.lsp.buf.signature_help()
  end, {
    desc = "Signature Help",
    has = "signatureHelp",
  })

  -- Code Action (Normal and Visual Modes)
  Snacks.keymap.set({ "n", "x" }, "<leader>ca", vim.lsp.buf.code_action, {
    desc = "Code Action",
    has = "codeAction",
  })

  -- Run Codelens (Normal and Visual Modes)
  Snacks.keymap.set({ "n", "x" }, "<leader>cc", vim.lsp.codelens.run, {
    desc = "Run Codelens",
  })

  -- Refresh & Display Codelens (Normal Mode)
  Snacks.keymap.set("n", "<leader>cC", vim.lsp.codelens.refresh, {
    desc = "Refresh & Display Codelens",
    has = "codeLens",
  })

  -- Rename
  Snacks.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, {
    desc = "Rename",
    has = "rename",
  })

  -- Next Reference
  Snacks.keymap.set("n", "]]", function()
    Snacks.words.jump(vim.v.count1)
  end, {
    desc = "Next Reference",
    has = "documentHighlight",
    enabled = function()
      return Snacks.words.is_enabled()
    end,
  })

  -- Previous Reference
  Snacks.keymap.set("n", "[[", function()
    Snacks.words.jump(-vim.v.count1)
  end, {
    desc = "Prev Reference",
    has = "documentHighlight",
    enabled = function()
      return Snacks.words.is_enabled()
    end,
  })

  -- Next Reference (Alternative)
  Snacks.keymap.set("n", "<a-n>", function()
    Snacks.words.jump(vim.v.count1, true)
  end, {
    desc = "Next Reference",
    has = "documentHighlight",
    enabled = function()
      return Snacks.words.is_enabled()
    end,
  })

  -- Previous Reference (Alternative)
  Snacks.keymap.set("n", "<a-p>", function()
    Snacks.words.jump(-vim.v.count1, true)
  end, {
    desc = "Prev Reference",
    has = "documentHighlight",
    enabled = function()
      return Snacks.words.is_enabled()
    end,
  })

  -- LSP Info
  Snacks.keymap.set("n", "<leader>cl", function()
    Snacks.picker.lsp_config()
  end, {
    desc = "Lsp Info",
  })

  -- Rename File
  Snacks.keymap.set("n", "<leader>cR", function()
    Snacks.rename.rename_file()
  end, {
    desc = "Rename File",
    has = { "workspace/didRenameFiles", "workspace/willRenameFiles" },
  })

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
