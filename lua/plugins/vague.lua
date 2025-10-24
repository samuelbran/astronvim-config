return {
  "vague2k/vague.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("vague").setup {
      italic = false,
      on_highlights = function(hg, c)
        -- print(vim.inspect(hg))
        hg.SnacksIndentChunk.fg = c.number
        hg.SnacksIndent.fg = c.number
        hg.SnacksIndentScope.fg = c.number

        hg.WinSeparator = { fg = c.line }
        hg.NeoTreeTabActive = { bg = c.bg }
        hg.NeoTreeTabSeparatorActive = { fg = c.bg, bg = c.bg }
        hg.NeoTreeTabInactive = { bg = c.inactiveBg }
        hg.NeoTreeTabSeparatorInactive = { fg = c.inactiveBg, bg = c.inactiveBg }
        hg.CursorLineNr = { bg = c.bg, fg = c.number, gui = "bold" }
      end,
      colors = {
        line = "#1c1c24",
        floatBorder = "#606079",
      },
    }
  end,
}
