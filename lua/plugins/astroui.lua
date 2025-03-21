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
    colorscheme = "rose-pine",
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
      gruvbox = { -- a table of overrides/changes when applying the rose-pine theme
        NeoTreeDirectoryIcon = { fg = "#83a597" },
        NeoTreeDirectoryName = { fg = "#a89983" },
        NeoTreeFileName = { fg = "#a89983" },
        SignColumn = { bg = "#272727" },
        SignColumnNr = { bg = "#272727" },
        FoldColumn = { bg = "#272727", fg = "#504945" },
        ColorColumn = { bg = "#32302f" },
        LineNr = { bg = "#272727", fg = "#a89983" },
        CursorLineNr = { bg = "#272727", fg = "#fabc2e", bold = true },
        CursorLine = { bg = "#32302f" },
        GruvboxRedSign = { fg = "#fb4934", bg = "#272727" },
        GruvboxGreenSign = { fg = "#b8bb26", bg = "#272727" },
        GruvboxYellowSign = { fg = "#fabd2f", bg = "#272727" },
        GruvboxBlueSign = { fg = "#83a598", bg = "#272727" },
        GruvboxPurpleSign = { fg = "#d3869b", bg = "#272727" },
        GruvboxAquaSign = { fg = "#8ec07c", bg = "#272727" },
        GruvboxOrangeSign = { fg = "#fe8019", bg = "#272727" },
      },
      ["rose-pine"] = {
        CursorLine = { bg = "#2a273f" },
        CursorLineNr = { bg = "#232136", fg = "#f6c177", bold = true },
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
    status = {
      -- Configure attributes of components defined in the `status` API. Check the AstroNvim documentation for a complete list of color names, this applies to colors that have `_fg` and/or `_bg` names with the suffix removed (ex. `git_branch_fg` as attributes from `git_branch`).
      attributes = {
        git_branch = { bold = true },
      },
      -- Configure colors of components defined in the `status` API. Check the AstroNvim documentation for a complete list of color names.
      colors = {
        -- git_branch_fg = "#ABCDEF",
      },
      -- Configure which icons that are highlighted based on context
      icon_highlights = {
        -- enable or disable breadcrumb icon highlighting
        breadcrumbs = true,
        -- Enable or disable the highlighting of filetype icons both in the statusline and tabline
        file_icon = {
          tabline = function(self) return self.is_active or self.is_visible end,
          statusline = true,
        },
      },
      -- Configure characters used as separators for various elements
      separators = {
        none = { "", "" },
        left = { "", "  " },
        right = { "  ", "" },
        center = { "  ", "  " },
        tab = { "", "" },
        breadcrumbs = " 󰅂 ",
        path = " 󰅂 ",
      },
      -- Configure enabling/disabling of winbar
      winbar = {
        enabled = { -- whitelist buffer patterns
          filetype = { "gitsigns.blame" },
        },
        disabled = { -- blacklist buffer patterns
          buftype = { "nofile", "terminal" },
        },
      },
    },
    text_icons = {
      TabClose = "x",
    },
  },
}
