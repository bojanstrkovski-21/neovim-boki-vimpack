vim.g.mkdp_filetypes = { "markdown" }

-- Set custom browser (uncomment one):
-- vim.g.mkdp_browser = "thorium-browser"
-- vim.g.mkdp_browser = "firefox"

-- Run installation after startup
vim.defer_fn(function()
    vim.cmd("call mkdp#util#install()")
end, 0)
