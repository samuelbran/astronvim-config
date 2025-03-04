return {
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = false,
  priority = 1000,
  opts = {
    variant = "moon",
    disable_italics = true,
    highlight_groups = {
      WinSeparator = { fg = "base" },
      NeoTreeNormal = { bg = "surface" },
      NeoTreeNormalNC = { bg = "surface" },
      NeoTreeTabActive = { bg = "surface" },
    },
  },
}
