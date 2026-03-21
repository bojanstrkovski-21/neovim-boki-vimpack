vim.pack.add({
  { src = "https://github.com/neanias/everforest-nvim" },
  { src = "https://github.com/folke/tokyonight.nvim" },
  { src = "https://github.com/EdenEast/nightfox.nvim"},
  { src = "https://github.com/catppuccin/nvim"},
  { src = "https://github.com/bluz71/vim-nightfly-colors"},
  { src = "https://github.com/navarasu/onedark.nvim"},
  { src = "https://github.com/dracula/vim"},
  { src = "https://github.com/sainnhe/gruvbox-material"},
  { src = "https://github.com/luisiacc/gruvbox-baby"},
  { src = "https://github.com/wuelnerdotexe/vim-enfocado"},
  { src = "https://github.com/jdpedersen1/poimandres.nvim"},
  { src = "https://github.com/LunarVim/horizon.nvim"},
  { src = "https://github.com/LunarVim/synthwave84.nvim"},
  { src = "https://github.com/NTBBloodbath/doom-one.nvim"},
  { src = "https://github.com/rebelot/kanagawa.nvim"},
  { src = "https://github.com/vague-theme/vague.nvim"},
  { src = "https://github.com/blazkowolf/gruber-darker.nvim"},
  { src = "https://github.com/rktjmp/lush.nvim"},
  { src = "https://github.com/Skardyy/makurai-nvim"},
  { src = "https://github.com/oahlen/iceberg.nvim"},
  { src = "https://github.com/metalelf0/black-metal-theme-neovim"},
  { src = "https://github.com/bojanstrkovski-21/archboki_nvim"},
  { src = "https://github.com/zenbones-theme/zenbones.nvim"},
  { src = "https://github.com/jnurmine/Zenburn"},
  { src = "https://github.com/gbprod/nord.nvim"},  { src = "https://github.com/arcticicestudio/nord-vim" },
  { src = "https://github.com/LunarVim/primer.nvim" },  { src = "https://github.com/ellisonleao/gruvbox.nvim"},
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
  { src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  { src = "https://github.com/andrew-george/telescope-themes" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/williamboman/mason.nvim" },
  { src = "https://github.com/williamboman/mason-lspconfig.nvim" },
  { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
  { src = "https://github.com/folke/lazydev.nvim" },
  { src = "https://github.com/Bilal2453/luvit-meta" },
  { src = "https://github.com/j-hui/fidget.nvim" },
  { src = "https://github.com/hrsh7th/nvim-cmp" },
  { src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
  { src = "https://github.com/hrsh7th/cmp-path" },
  { src = "https://github.com/L3MON4D3/LuaSnip", version = "v2.4.1", build = "make install_jsregexp" },
  { src = "https://github.com/rafamadriz/friendly-snippets" },
  { src = "https://github.com/saadparwaiz1/cmp_luasnip" },
  { src = 'https://github.com/windwp/nvim-autopairs' },
  { src = "https://github.com/NvChad/nvim-colorizer.lua" },
  { src = "https://github.com/ibhagwan/fzf-lua" },
  { src = "https://github.com/nvim-lualine/lualine.nvim" },
  { src = "https://github.com/romgrk/barbar.nvim" },
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
  { src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
  { src = "https://github.com/dhruvasagar/vim-table-mode" },
  { src = "https://github.com/folke/noice.nvim" },
  { src = "https://github.com/MunifTanjim/nui.nvim" },
  { src = "https://github.com/goolord/alpha-nvim" },
  { src = "https://github.com/echasnovski/mini.icons" },
  { src = "https://github.com/iamcco/markdown-preview.nvim", build = "cd app && npx --yes yarn install" },
  { src = "https://github.com/nvim-neo-tree/neo-tree.nvim", version = "v3.x" },
  { src = "https://github.com/stevearc/oil.nvim" },
  { src = "https://github.com/kylechui/nvim-surround", version = "v4.0.4" },
  { src = "https://github.com/xiyaowong/transparent.nvim" },
  { src = "https://github.com/szw/vim-maximizer" },
})

require("plugins.everforest")
require("plugins.treesitter")
require("plugins.telescope")
require("plugins.lsp")
require("plugins.cmp")
require('plugins.autopairs')
require("plugins.colorizer")
require("plugins.fzf")
require("plugins.noice")
require("plugins.render-markdown")
require("plugins.barbar")
require("plugins.lualine")
require("plugins.alpha")
require("plugins.markdown-preview")
require("plugins.neotree")
require("plugins.oil")
require("plugins.surround")
require("plugins.transparent")
require("plugins.maximizer")

