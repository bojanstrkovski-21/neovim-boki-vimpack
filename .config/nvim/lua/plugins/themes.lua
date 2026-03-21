vim.pack.add({"https://github.com/folke/tokyonight.nvim.git"})
vim.pack.add({
  "https://github.com/neanias/everforest-nvim.git"
})

-- After the add, you would then require and set up the plugin.
require("everforest").setup({
  lazy = false,
  priority = 1000,
  background = "medium",
  transparent_background_level = 0,
  italics = true,
  disable_italics_comments = false,
  on_highlights = function(hl, _)
    hl["@string.special.symbol.ruby"] = { link = "@field" }
  end,
})

require("tokyonight").setup({
  lazy = false,
  priority = 1000,
  -- use the night,storm,day or moon style
  style = "night",
  -- disable italic for functions
  styles = {
    functions = {}
  },
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  -- on_colors = function(colors)
  --   colors.hint = colors.orange
  --   colors.error = "#ff0000"
  -- end
})

vim.cmd.colorscheme("everforest")