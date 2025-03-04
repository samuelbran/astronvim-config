-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "rasmus",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      -- init = { -- this table overrides highlights in all themes
      --   WinSeparator = { fg = "#333332" }, -- Color for nvim-tree sidebar border
      -- },
      rasmus = { -- a table of overrides/changes when applying the rasmus theme
        WinSeparator = { fg = "#333332" }, -- Color for nvim-tree sidebar border
        NeoTreeTabActive = { bg = "#1A1A19" },
        NeoTreeTabSeparatorActive = { fg = "#1A1A19", bg = "#1A1A19" },
        NeoTreeTabInactive = { bg = "#222221" },
        NeoTreeTabSeparatorInactive = { fg = "#1A1A19", bg = "#222221" },
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
    separators = {
      left = { "", "" },
      right = { "", "" },
      center = { "", "" },
    },
    text_icons = {
      TabClose = "x",
    },
  },
}
