# My Neovim Configuration

A personal Neovim configuration built on [`nixCats`](https://github.com/BirdeeHub/nixCats-nvim), using [`lze`](https://github.com/BirdeeHub/lze) for lazy loading. Inspired by [LazyVim](https://www.lazyvim.org/). Includes a non-Nix fallback via `paq` and `mason`.

> **Leader key**: `<Space>` — **Local leader**: `\`

---

## Plugins

| Plugin | Purpose | Category |
|--------|---------|----------|
| snacks.nvim | Dashboard, pickers, lazygit, terminal, notifications | always |
| nvim-lspconfig | LSP client | always |
| blink.cmp + luasnip | Completion + snippets | general.blink |
| nvim-treesitter | Syntax, folds, indentation | general.treesitter |
| nvim-treesitter-textobjects | Treesitter text objects | general.treesitter |
| mini.ai | Extended text objects | always |
| mini.surround | Surround operations | always |
| mini.comment | Commenting | always |
| mini.icons | Icons | always |
| gitsigns.nvim | Git hunk signs and actions | always |
| lualine.nvim | Status line + buffer tabline | always |
| flash.nvim | Jump motions | always |
| todo-comments.nvim | TODO/FIXME highlighting & navigation | always |
| persistence.nvim | Session management | always |
| grug-far.nvim | Search and replace | always |
| nvim-autopairs | Auto-close brackets | always |
| oil.nvim | File explorer | general.extra |
| which-key.nvim | Keymap hints | general.extra |
| fidget.nvim | LSP progress indicator | general.extra |
| indent-blankline.nvim | Indent guides | general.extra |
| undotree | Visual undo history | general.extra |
| vim-startuptime | Startup profiler | general.extra |
| conform.nvim | Formatting (lua, terraform, fish) | format |
| nvim-lint | Linting | lint |
| nvim-dap + nvim-dap-ui | Debugger | debug |
| nvim-dap-virtual-text | Inline debug values | debug |
| nvim-dap-go | Go debugger | debug.go |
| lazydev.nvim | Lua LSP improvements for config | neonixdev |
| markdown-preview.nvim | Markdown browser preview | markdown |
| vim-fugitive + vim-rhubarb | Git commands + GitHub integration | always |
| catppuccin | Colorscheme | themer |

---

## Keymaps

### Editor

| Key | Mode | Description |
|-----|------|-------------|
| `<Esc>` | n | Clear search highlight + dismiss notifications |
| `<C-s>` | n/i/x/s | Save file |
| `<C-a>` | n/v/x | Select all |
| `<C-d>` / `<C-u>` | n | Scroll down/up (cursor centred) |
| `n` / `N` | n | Next/prev search result (cursor centred) |
| `j` / `k` | n | Move by visual lines when no count |
| `J` / `K` | v | Move selection down/up |
| `W` / `Wq` / `Q` | cmd | Sticky-key aliases for `w`/`wq`/`q` |

### Buffers

| Key | Mode | Description |
|-----|------|-------------|
| `<S-h>` / `<S-l>` | n | Prev/next buffer |
| `[b` / `]b` | n | Prev/next buffer |
| `<leader><leader>[` / `]` | n | Prev/next buffer |
| `<leader><leader>l` | n | Last buffer |
| `<leader><leader>d` | n | Delete buffer |
| `<leader>bb` / `<leader>`` | n | Switch to other buffer |
| `<leader>bd` | n | Delete buffer (snacks) |
| `<leader>bD` | n | Delete buffer and window |
| `<leader>bo` | n | Delete other buffers |

### Windows & Tabs

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>\|` | n | Split window right |
| `<leader>wd` | n | Delete window |
| `<leader><tab><tab>` | n | New tab |
| `<leader><tab>]` / `[` | n | Next/prev tab |
| `<leader><tab>l` / `f` | n | Last/first tab |
| `<leader><tab>d` | n | Close tab |
| `<leader><tab>o` | n | Close other tabs |
| `<c-w><space>` | n | Window hydra mode (which-key) |

### Files & Navigation (Snacks Picker)

| Key | Mode | Description |
|-----|------|-------------|
| `<leader><space>` | n | Smart find files |
| `<leader>ff` | n | Find files |
| `<leader>fg` | n | Find git files |
| `<leader>fr` | n | Recent files |
| `<leader>fp` | n | Projects |
| `<leader>fb` | n | Buffers |
| `<leader>fc` | n | Find config file |
| `<leader>fn` | n | New file |
| `<leader>e` | n | File explorer (snacks) |
| `-` | n | Open parent directory (oil) |
| `<leader>-` | n | Open nvim root (oil) |

### Search (Snacks Picker)

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>/` | n | Grep |
| `<leader>sg` | n | Grep |
| `<leader>sw` | n/x | Grep word / selection |
| `<leader>sb` | n | Buffer lines |
| `<leader>sB` | n | Grep open buffers |
| `<leader>sr` | n/x | Search and replace (grug-far) |
| `<leader>sh` | n | Help pages |
| `<leader>sk` | n | Keymaps |
| `<leader>sm` | n | Marks |
| `<leader>sM` | n | Man pages |
| `<leader>sj` | n | Jumps |
| `<leader>su` | n | Undo history |
| `<leader>sa` | n | Autocmds |
| `<leader>sc` / `<leader>:` | n | Command history |
| `<leader>sC` | n | Commands |
| `<leader>s"` | n | Registers |
| `<leader>s/` | n | Search history |
| `<leader>sH` | n | Highlights |
| `<leader>si` | n | Icons |
| `<leader>sR` | n | Resume last picker |
| `<leader>st` | n | Todo comments |
| `<leader>sT` | n | Todo/Fix/Fixme only |
| `<leader>n` | n | Notification history |
| `<leader>uC` | n | Colorschemes |
| `<leader>?` | n | Buffer keymaps (which-key) |
| `<leader>,` | n | Buffers picker |

### Git

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>gg` | n | Lazygit |
| `<leader>gl` | n | Git log |
| `<leader>gL` | n | Git log (current line) |
| `<leader>gf` | n | Git log (current file) |
| `<leader>gs` | n | Git status picker |
| `<leader>gb` | n | Git branches |
| `<leader>gd` | n | Git diff hunks |
| `<leader>gS` | n | Git stash |
| `<leader>gi` / `<leader>gI` | n | GitHub issues (open / all) |
| `<leader>gp` / `<leader>gP` | n | GitHub PRs (open / all) |

**In git buffers** — gitsigns buffer-local keymaps override the above where noted:

| Key | Mode | Description |
|-----|------|-------------|
| `]c` / `[c` | n/v | Next/prev hunk |
| `<leader>gs` | n | Stage hunk |
| `<leader>gr` | n | Reset hunk |
| `<leader>gS` | v | Stage selected lines |
| `<leader>gr` | v | Reset selected lines |
| `<leader>gS` | n | Stage buffer |
| `<leader>gu` | n | Undo stage hunk |
| `<leader>gR` | n | Reset buffer |
| `<leader>gp` | n | Preview hunk |
| `<leader>gb` | n | Blame line |
| `<leader>gd` | n | Diff against index |
| `<leader>gD` | n | Diff against last commit |
| `<leader>gtb` | n | Toggle blame line |
| `<leader>gtd` | n | Toggle deleted |
| `ih` | o/x | Select hunk (text object) |

### LSP

| Key | Mode | Description |
|-----|------|-------------|
| `gd` | n | Go to definition |
| `gr` | n | References |
| `gI` | n | Go to implementation |
| `gy` | n | Go to type definition |
| `gD` | n | Go to declaration |
| `gai` / `gao` | n | Incoming / outgoing calls |
| `K` | n | Hover documentation |
| `gK` / `<C-k>` | n/i | Signature help |
| `]]` / `[[` | n | Next/prev reference (Snacks words) |
| `<a-n>` / `<a-p>` | n | Next/prev reference (alt) |
| `<leader>ca` | n/x | Code action |
| `<leader>cc` | n/x | Run codelens |
| `<leader>cC` | n | Refresh codelens |
| `<leader>cr` | n | Rename symbol |
| `<leader>cR` | n | Rename file |
| `<leader>cl` | n | LSP info |
| `<leader>cd` | n | Line diagnostics (float) |
| `<leader>cD` | n | Toggle diagnostics list |
| `<leader>cf` | n/v | Format |
| `<leader>ss` | n | LSP symbols |
| `<leader>sS` | n | LSP workspace symbols |
| `<leader>sd` | n | Diagnostics (all) |
| `<leader>sD` | n | Diagnostics (buffer) |

### Clipboard

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>y` / `<leader>Y` | n/v/x | Yank to system clipboard |
| `<leader>p` | n/v/x | Paste from system clipboard |
| `<leader>P` | x | Paste over selection (keeps register) |
| `<C-p>` | i | Paste from clipboard |

### Quickfix & Lists

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>xq` | n | Toggle quickfix list |
| `<leader>xl` | n | Toggle location list |
| `[q` / `]q` | n | Prev/next quickfix item |
| `dd` | n (qf) | Remove item from quickfix list |

### Todo Comments

| Key | Mode | Description |
|-----|------|-------------|
| `]t` / `[t` | n | Next/prev todo comment |
| `<leader>st` | n | Search all todos |
| `<leader>sT` | n | Search TODO/FIX/FIXME |

### Flash (Jump Motions)

| Key | Mode | Description |
|-----|------|-------------|
| `s` | n/x/o | Flash jump |
| `S` | n/x/o | Flash treesitter node |
| `r` | o | Remote flash |
| `R` | o/x | Treesitter search |
| `<C-s>` | c | Toggle flash in search |

### Text Objects

**mini.ai** (extend standard `a`/`i` objects):

| Object | Description |
|--------|-------------|
| `af` / `if` | Function outer/inner (treesitter) |
| `ac` / `ic` | Class outer/inner (treesitter) |
| `ao` / `io` | Block/conditional/loop outer/inner (treesitter) |
| `a(` `a[` `a{` `a"` etc. | Smarter bracket/quote objects |

**nvim-treesitter-textobjects** (operator/visual mode):

| Object | Description |
|--------|-------------|
| `am` / `im` | Function outer/inner |
| `as` | Scope |

**mini.surround**:

| Key | Description |
|-----|-------------|
| `gsa` | Add surrounding |
| `gsd` | Delete surrounding |
| `gsr` | Replace surrounding |
| `gsf` / `gsF` | Find surrounding right/left |
| `gsh` | Highlight surrounding |

### Session (persistence.nvim)

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>qs` | n | Restore session for cwd |
| `<leader>qS` | n | Select session |
| `<leader>ql` | n | Restore last session |
| `<leader>qd` | n | Don't save current session |
| `<leader>qq` | n | Quit all |

### Terminal

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>ft` | n | Open terminal |
| `<C-/>` / `<C-_>` | n/t | Toggle terminal |

### Debug (DAP) — requires `debug` category

| Key | Mode | Description |
|-----|------|-------------|
| `<F5>` | n | Start / continue |
| `<F1>` | n | Step into |
| `<F2>` | n | Step over |
| `<F3>` | n | Step out |
| `<F7>` | n | Toggle DAP UI |
| `<leader>b` | n | Toggle breakpoint |
| `<leader>B` | n | Set conditional breakpoint |

### Markdown — requires `markdown` category

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>mp` | n | Markdown preview |
| `<leader>ms` | n | Stop preview |
| `<leader>mt` | n | Toggle preview |

### Misc

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>U` | n | Toggle undotree |
| `<leader>sr` | n/x | Search and replace (grug-far) |

---

## Why nixCats?

Using `nixCats` provides a **simpler, more transparent** experience compared to solutions like `lazy.nvim`, which hijack normal plugin loading.

It leverages the normal packpath methods of loading plugins both at startup and lazily, allowing you to know what is going on behind the scenes. It avoids duplicating functionality between nix and other nvim-based download managers, avoiding compatibility issues. The config also works without Nix via `paq` + `mason`.

## Directory Structure

```
├── flake.nix                      # Nix package definition (plugins, LSPs, categories)
├── init.lua                       # Entry point
└── lua/
    ├── nixCatsUtils/              # Nix/non-Nix utility library
    └── myLuaConf/
        ├── init.lua               # Config loader
        ├── opts_and_keys.lua      # Core options and keymaps
        ├── format.lua             # conform.nvim setup
        ├── lint.lua               # nvim-lint setup
        ├── debug.lua              # DAP setup
        ├── non_nix_download.lua   # paq fallback for non-Nix
        ├── LSPs/
        │   ├── init.lua           # LSP server definitions
        │   └── on_attach.lua      # LSP keymaps
        └── plugins/
            ├── init.lua           # Main plugin specs
            ├── snacks.lua         # Snacks configuration
            ├── completion.lua     # blink.cmp + luasnip
            ├── treesitter.lua     # nvim-treesitter
            ├── mini.lua           # mini.* plugins
            └── mini-pick.lua      # mini.icons, mini.extra, mini.pick
```
