return {
  "vague2k/vague.nvim",
  config = function()
    -- NOTE: you do not need to call setup if you don't want to.
    require("vague").setup {
      italic = false,
      colors = {
        line = "#1c1c24",
        floatBorder = "#606079",
      },
      on_highlights = function(hg, c)
        -- print(vim.inspect(hg))
        hg.SnacksIndentChunk = { fg = c.line }
        hg.SnacksIndent = { fg = c.line }
        hg.SnacksIndentScope = { fg = c.line }
      end,
    }
  end,
}
