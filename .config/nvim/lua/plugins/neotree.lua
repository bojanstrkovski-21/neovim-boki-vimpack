require("neo-tree").setup({
    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_hidden = false,
            never_show = false,
            always_show = true,
        },
    },
})

vim.keymap.set("n", "<C-n>", ":Neotree toggle filesystem reveal left<CR>", {})
vim.keymap.set("n", "<leader>bf", ":Neotree toggle buffers reveal float<CR>", {})
