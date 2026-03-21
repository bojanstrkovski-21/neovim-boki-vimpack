local parsers = {
  "bash", "c", "cpp", "lua", "python", "go",
  "markdown", "markdown_inline",
  "toml", "yaml", "json", "jsonc",
  "typst", "vim", "vimdoc",
  "css", "html", "cmake",
  "typescript", "javascript",
  "rust", "fish", "astro", "rasi",
}

require('nvim-treesitter').setup({
  ensure_installed = parsers,  -- installs only if missing, not every launch
  auto_install = false,        -- don't auto install unknown parsers
  sync_install = false,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function()
    pcall(vim.treesitter.start)
  end,
})