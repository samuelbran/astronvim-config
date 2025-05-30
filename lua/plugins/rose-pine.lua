local bg_color = "gold"
local fg_color = "base"

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
      NeoTreeTabActive = { fg = fg_color, bg = bg_color },
      NeoTreeTabSeparatorActive = { fg = bg_color, bg = bg_color },
      NeoTreeTabSeparatorInactive = { fg = "overlay", bg = "surface" },
      NeoTreeCursorLine = { bg = bg_color, fg = fg_color },
      CursorLine = { bg = "surface" },
      CursorLineNr = { bg = "base", fg = "gold", bold = true },
      CmdLine = { bg = "gold", fg = "base", bold = true },
    },
  },
}
