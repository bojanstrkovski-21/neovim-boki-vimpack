local keymap = vim.keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>q", ":q<CR>")

keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")

-- open alpha-nvim dashboard
vim.keymap.set("n", "<leader>aa", ":Alpha<CR>", {})

-- toggle colorschemes switcher
--vim.api.nvim_set_keymap('n', '<leader>cs', [[<Cmd>lua require('_switcher.switcher').find_colors()<CR>]], { noremap = true, silent = true })