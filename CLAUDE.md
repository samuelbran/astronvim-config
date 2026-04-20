# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Neovim configuration built on **AstroNvim v4** using **lazy.nvim** as the plugin manager. The entry point (`init.lua`) bootstraps lazy.nvim, which loads `lua/lazy_setup.lua` to import all plugin specs.

## Architecture

- `lua/lazy_setup.lua` — Configures lazy.nvim and defines the plugin import order: AstroNvim core first, then `lua/plugins/`, then `lua/community.lua`, then `lua/polish.lua`
- `lua/community.lua` — Imports from `astrocommunity` (language packs for Lua/TypeScript, VSCode recipe, statusline recipe, image support, spectre, colorschemes, AI tools)
- `lua/plugins/` — Individual plugin spec files. Each file returns a table (or list of tables) following the lazy.nvim plugin spec format
- `lua/polish.lua` — Runs after all plugins load; defines custom filetypes

### Key Plugin Spec Files

| File | Purpose |
|------|---------|
| `plugins/astrocore.lua` | Vim options, custom keymaps, autocommands, large file limits |
| `plugins/astrolsp.lua` | LSP behavior: format-on-save, codelens, semantic tokens, diagnostics |
| `plugins/astroui.lua` | Colorscheme selection (`vague`), per-theme highlight overrides |
| `plugins/mason.lua` | Mason-managed tools: `lua_ls`, `stylua`, `prettierd`, `python` debugger |
| `plugins/overriden.lua` | Neo-tree (right-side, custom copy selector) and vtsls TypeScript config |
| `plugins/heirline.lua` | Full custom statusline, tabline, and statuscolumn |
| `plugins/vague.lua` | Extensive vague theme color/highlight customization |
| `plugins/user.lua` | Extra plugins: autopairs (with LaTeX `$` rules), neoscroll, hardtime, presence, markdown-preview |
| `plugins/none-ls.lua` | null-ls formatting sources |
| `plugins/vscode.lua` | Disabled plugins and custom mappings for VSCode Neovim integration |

## Code Quality

- **Lua formatting**: Stylua (config in `.stylua.toml` — 2-space indent, 120 col width, double quotes)
- **Lua linting**: Selene with neovim standard (`selene.toml`)
- **LSP**: lua_ls configured via `.neoconf.json` with neodev library; formatting delegated to Stylua
- **TypeScript**: vtsls with non-relative imports and minimal specifier endings

## Conventions

- All plugin configuration follows the AstroNvim v4 override pattern: return a table with the plugin name as first element and an `opts` function or table to merge with defaults
- Theme-specific highlight overrides go in `astroui.lua` under `highlights.init` keyed by colorscheme name
- Mason handles tool installation; don't configure language servers directly in lspconfig — use `astrolsp.lua` and `mason.lua`
