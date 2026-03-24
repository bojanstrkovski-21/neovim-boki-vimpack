-- mason
require("mason").setup()
vim.api.nvim_create_autocmd("FileType", {
    pattern = "mason",
    callback = function()
        vim.bo.modifiable = true
    end,
})

-- mason-lspconfig
require("mason-lspconfig").setup({
    ensure_installed = {
        "bashls", "clangd", "cssls",
        "emmet_language_server", "gopls", "html",
        "jsonls", "lua_ls", "marksman",
        "pyright", "rust_analyzer", "yamlls",
    },
})

-- mason-tool-installer
require("mason-tool-installer").setup({
    ensure_installed = {
        "prettier",
        "stylua",
        "isort",
        "black",
        "pylint",
        "eslint_d",
        "luacheck",
    },
})

-- lazydev
require("lazydev").setup({
    library = {
        { path = "luvit-meta/library", words = { "vim%.uv" } },
    },
})

-- fidget
require("fidget").setup()

-- lspconfig
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = {
    "html", "lua_ls", "bashls", "clangd", "cssls",
    "emmet_language_server", "gopls", "jsonls",
    "marksman", "pyright", "rust_analyzer", "yamlls",
}

for _, server in ipairs(servers) do
    vim.lsp.config(server, {
        capabilities = capabilities,
    })
    vim.lsp.enable(server)
end

-- keymaps
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})