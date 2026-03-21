vim.o.background = "dark"

require("everforest").setup({
    background = "medium",
    transparent_background_level = 0,
    italics = true,
    disable_italic_comments = false,
    on_highlights = function(hl, _)
        hl["@string.special.symbol.ruby"] = {
            link = "@field"
        }
    end,
})
-- vim.cmd.colorscheme("everforest")


require("tokyonight").setup()
require("nightfox").setup()
require("catppuccin").setup({
    flavour = "mocha",
})
require('onedark').setup({
    style = "dark",
    transparent = false,
    code_style = {
        comments = "italic",
        keywords = "none",
        functions = "none",
        strings = "none",
        variables = "none"
    },
    lualine = {
        transparent = false -- lualine center bar transparency
    },
    colors = {
        grey = "#8b8b8b",
        fg = "#bbbbbb",
        bg0 = "#2b2e37"
            },
            highlights = {
                TreesitterContext = {
                    fg = "$fg",
                    bg = "$bg2"
                },
                CursorLine = {
                    bg = "#2b3137"
                }
            }
})

require("vague").setup({
            -- optional configuration here
            -- transparent = true,
            style = {
                -- "none" is the same thing as default. But "italic" and "bold" are also valid options
                boolean = "none",
                number = "none",
                float = "none",
                error = "none",
                comments = "none",
                conditionals = "none",
                functions = "none",
                headings = "bold",
                operators = "none",
                strings = "none",
                variables = "none",

                -- keywords
                keywords = "none",
                keyword_return = "none",
                keywords_loop = "none",
                keywords_label = "none",
                keywords_exception = "none",

                -- builtin
                builtin_constants = "none",
                builtin_functions = "none",
                builtin_types = "none",
                builtin_variables = "none"
            },
            colors = {
                func = "#bc96b0",
                keyword = "#787bab",
                -- string = "#d4bd98",
                string = "#8a739a",
                -- string = "#f2e6ff",
                -- number = "#f2e6ff",
                -- string = "#d8d5b1",
                number = "#8f729e"
                -- type = "#dcaed7",
            }
})

-- vim.cmd([[let g:enfocado_style = 'neon']])
vim.cmd([[let g:enfocado_style = 'nature']])
vim.cmd([[set t_Co=256]])

-- doom-one
vim.g.doom_one_cursor_coloring = false
vim.g.doom_one_terminal_colors = true
vim.g.doom_one_italic_comments = false
vim.g.doom_one_enable_treesitter = true
vim.g.doom_one_diagnostics_text_color = false
vim.g.doom_one_transparent_background = false
vim.g.doom_one_pumblend_enable = false
vim.g.doom_one_pumblend_transparency = 20
vim.g.doom_one_plugin_neorg = true
vim.g.doom_one_plugin_barbar = false
vim.g.doom_one_plugin_telescope = false
vim.g.doom_one_plugin_neogit = true
vim.g.doom_one_plugin_nvim_tree = true
vim.g.doom_one_plugin_dashboard = true
vim.g.doom_one_plugin_startify = true
vim.g.doom_one_plugin_whichkey = true
vim.g.doom_one_plugin_indent_blankline = true
vim.g.doom_one_plugin_vim_illuminate = true
vim.g.doom_one_plugin_lspsaga = false

require("gruber-darker").setup({
    bold = false,
})

-- zenbones
vim.g.zenbones = { italic = false }
-- vim.g.rosebones = { italic = false }
-- vim.g.nordbones = { italic = false }

require('kanagawa').setup({
    compile = false,
    undercurl = true,
    commentStyle = { italic = true },
    keywordStyle = { italic = true },
    statementStyle = { bold = true },
    transparent = false,
    dimInactive = false,
    background = {
        dark = "wave",
        light = "lotus"
    }
})


