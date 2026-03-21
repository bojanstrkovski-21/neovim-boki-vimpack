local opt = vim.opt
local g = vim.g

-- line numbers
opt.number = true
opt.relativenumber = false

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- wrapping
opt.wrap = true

-- search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- cursor
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.colorcolumn = ""
opt.cmdheight = 0
opt.scrolloff = 10
opt.winborder = "rounded"

-- show empty lines as blank
opt.fillchars = { eob = " " }

-- behavior
opt.hidden = false
opt.errorbells = false
opt.backup = false
opt.swapfile = false
opt.undofile = true
opt.undodir = vim.fn.expand("~/.vim/undodir")
opt.backspace = "indent,eol,start"
opt.autochdir = false
opt.modifiable = true

-- completion
opt.completeopt = { "menuone", "noselect", "noinsert" }

-- keyword behavior
opt.iskeyword:append("-")

-- mouse
opt.mouse = "a"

-- clipboard
opt.clipboard:append("unnamedplus")

-- splits
opt.splitright = true
opt.splitbelow = true

-- encoding
opt.encoding = "utf-8"