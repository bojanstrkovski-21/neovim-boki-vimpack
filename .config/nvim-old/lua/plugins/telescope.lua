vim.pack.add({

"https://github.com/nvim-telescope/telescope.nvim.git"

})

vim.pack.add({

"https://github.com/nvim-telescope/telescope-fzf-native.nvim.git",

})

vim.pack.add({

"https://github.com/nvim-lua/plenary.nvim.git"

})

vim.pack.add({

"https://github.com/nvim-tree/nvim-web-devicons.git"

})

vim.pack.add({

"https://github.com/andrewberty/telescope-themes.git"

})


require("telescope").setup({
	config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")

    telescope.load_extension("fzf")
    telescope.load_extension("themes")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
          },
        },
      },
      extensions = {
        themes = {
          enable_previewer = true,
          enable_live_preview = true,
          persist = {
            enabled = true,
            path = vim.fn.stdpath("config") .. "/lua/plugins/tokyonight.lua",
          },
        },
      },
    })

    -- Keymaps
    vim.keymap.set("n", "<leader>pr", "<cmd>Telescope oldfiles<CR>", { desc = "Fuzzy find recent files" })
    vim.keymap.set("n", "<leader>pWs", function()
      local word = vim.fn.expand("<cWORD>")
      builtin.grep_string({ search = word })
    end, { desc = "Find Connected Words under cursor" })

    end,

})
