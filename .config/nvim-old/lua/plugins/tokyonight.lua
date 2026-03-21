vim.pack.add({"https://github.com/folke/tokyonight.nvim.git"})
vim.pack.add({
  "https://github.com/neanias/everforest-nvim.git"
})

-- After the add, you would then require and set up the plugin.
require("everforest").setup({
  background = "medium",
  transparent_background_level = 0,
  italics = true,
  disable_italics_comments = false,
  on_highlights = function(hl, _)
    hl["@string.special.symbol.ruby"] = { link = "@field" }
  end,
})
--vim.cmd[[colorscheme everforest]]
