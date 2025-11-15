return {
  "vague2k/vague.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("vague").setup {
      italic = false,
      on_highlights = function(hg, c)
        local winSeparatorColor = "#262632"
        -- local neoTreBg = "#161619"
        local neoTreBg = c.bg
        local activeTabBg = c.bg

        hg.CursorLineNr = { bg = c.bg, fg = c.number, gui = "bold" }
        hg.ColorColumn = { fg = c.line, bg = c.line }
        hg.WinSeparator = { fg = winSeparatorColor, bg = c.bg, ftm = "bold" }

        -- NeoTree
        hg.NeoTreeVertSplit = { fg = winSeparatorColor, bg = c.bg, ftm = "bold" }
        hg.NeoTreeWinSeparator = { fg = winSeparatorColor, bg = c.bg, ftm = "bold" }
        hg.NeoTreeNormal = { fg = c.fg, bg = neoTreBg }
        hg.NeoTreeEndOfBuffer = { fg = c.fg, bg = neoTreBg }
        hg.NeoTreeTabActive = { fg = c.keyword, bg = activeTabBg, gui = "bold" }
        hg.NeoTreeTabSeparatorActive = { fg = activeTabBg, bg = activeTabBg }
        hg.NeoTreeRootName = { gui = "bold" }
        hg.NeoTreeGitUntracked = { fg = c.hint, ftm = "bold" }
        hg.NeoTreeTabInactive = { bg = c.bg }
        hg.NeoTreeTabSeparatorInactive = { fg = c.bg, bg = c.bg }
        hg.NeoTreeDirectoryIcon = { fg = c.keyword }
        hg.NeoTreeIndentMarker = { fg = c.line }
        hg.NeoTreeDirectoryName = { fg = c.fg }
        hg.NeoTreeFileName = { fg = c.comment }
      end,
      colors = {
        line = "#1c1c24",
        floatBorder = "#606079",
      },
    }
  end,
}
