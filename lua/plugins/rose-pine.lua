return {
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = false,
  priority = 1000,
  opts = {
    variant = "moon",
    disable_italics = true,
    dim_inactive_windows = false,
    highlight_groups = {
      WinSeparator = { fg = "overlay" },
      NeoTreeNormal = { bg = "base" },
      NeoTreeNormalNC = { bg = "base" },
      NeoTreeTabActive = { fg = "base", bg = "foam" },
      NeoTreeTabSeparatorActive = { fg = "foam", bg = "foam" },
      NeoTreeTabSeparatorInactive = { fg = "overlay", bg = "base" },
      NeoTreeCursorLine = { bg = "surface" },
      CursorLine = { bg = "surface" },
      CursorLineNr = { bg = "base", fg = "gold", bold = true },
    },
  },
}
