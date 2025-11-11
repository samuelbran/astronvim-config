return {
  "vague2k/vague.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("vague").setup {
      italic = false,
      on_highlights = function(hg, c)
        local winSeparatorColor = "#262632"

        hg.ColorColumn = { fg = c.line, bg = c.line }
        hg.WinSeparator = { fg = winSeparatorColor, bg = c.bg, ftm = "bold" }
        hg.NeoTreeTabActive = { fg = c.keyword, bg = c.bg, gui = "bold" }
        hg.NeoTreeTabSeparatorActive = { fg = c.bg, bg = c.bg }
        hg.NeoTreeRootName = { gui = "bold" }
        hg.NeoTreeTabInactive = { bg = c.bg }
        hg.NeoTreeTabSeparatorInactive = { fg = c.bg, bg = c.bg }
        hg.NeoTreeDirectoryIcon = { fg = c.keyword }
        hg.NeoTreeIndentMarker = { fg = c.line }
        hg.NeoTreeDirectoryName = { fg = c.fg }
        hg.NeoTreeFileName = { fg = c.comment }
        hg.CursorLineNr = { bg = c.bg, fg = c.number, gui = "bold" }
      end,
      colors = {
        line = "#1c1c24",
        floatBorder = "#606079",
      },
    }
  end,
}
