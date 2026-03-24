--local telescope = require("telescope")
--local actions = require("telescope.actions")
--local builtin = require("telescope.builtin")
--
--require("mini.icons").setup()
--
--telescope.load_extension("fzf")
--telescope.load_extension("themes")
--
--telescope.setup({
    --defaults = {
        --path_display = { "smart" },
        --mappings = {
            --i = {
                --["<C-k>"] = actions.move_selection_previous,
                --["<C-j>"] = actions.move_selection_next,
            --},
        --},
    --},
    --extensions = {
        --themes = {
            --enable_previewer = true,
            --enable_live_preview = true,
            --persist = {
                --enabled = true,
                --path = vim.fn.stdpath("config") .. "/lua/colors-2025.lua",
            --},
        --},
    --},
--})
--
--vim.keymap.set("n", "<leader>pr", "<cmd>Telescope oldfiles<CR>", { desc = "Fuzzy find recent files" })
--vim.keymap.set("n", "<leader>pWs", function()
    --local word = vim.fn.expand("<cWORD>")
    --builtin.grep_string({ search = word })
--end, { desc = "Find Connected Words under cursor" })
--vim.keymap.set("n", "<leader>vb", "<cmd>Telescope themes<CR>", { noremap = false, silent = true, desc = "Theme Switcher" })

local fzf_path = vim.fn.stdpath("data") .. "/site/pack/core/opt/telescope-fzf-native.nvim"
local lib = fzf_path .. "/build/libfzf.so"

if vim.fn.filereadable(lib) == 0 then
    vim.fn.system("make -C " .. fzf_path)
end

local telescope = require("telescope")
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")
require("mini.icons").setup()
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
                path = vim.fn.stdpath("config") .. "/lua/colors-2025.lua",
            },
        },
    },
})
vim.keymap.set("n", "<leader>pr", "<cmd>Telescope oldfiles<CR>", { desc = "Fuzzy find recent files" })
vim.keymap.set("n", "<leader>pWs", function()
    local word = vim.fn.expand("<cWORD>")
    builtin.grep_string({ search = word })
end, { desc = "Find Connected Words under cursor" })
vim.keymap.set("n", "<leader>vb", "<cmd>Telescope themes<CR>", { noremap = false, silent = true, desc = "Theme Switcher" })