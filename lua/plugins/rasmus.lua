return {
  "kvrohit/rasmus.nvim",
  lazy = false,
  priority = 1000,
  init = function() -- init function runs before the plugin is loaded
    vim.g.rasmus_variant = "monochrome"
  end,
}
