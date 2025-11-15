local bg_color = "overlay"

return {
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = false,
  priority = 1000,
  opts = {
    disable_italics = true,
    dim_inactive_windows = false,
    highlight_groups = {
      WinSeparator = { fg = "overlay" },
      NeoTreeNormal = { bg = "base" },
      NeoTreeNormalNC = { bg = "base" },
      NeoTreeTabActive = { bg = "overlay" },
      NeoTreeTabSeparatorActive = { fg = bg_color, bg = bg_color },
      NeoTreeTabSeparatorInactive = { fg = "overlay", bg = "surface" },
      NeoTreeCursorLine = { bg = "overlay" },
      CursorLine = { bg = "surface" },
      CursorLineNr = { bg = "base", fg = "gold", bold = true },
      CmdLine = { bg = "gold", fg = "base", bold = true },
    },
  },
}
