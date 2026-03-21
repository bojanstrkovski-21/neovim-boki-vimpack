-- mason
require("mason").setup()

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
local configs = require("lspconfig.configs")
local servers = {
    "html", "lua_ls", "bashls", "clangd", "cssls",
    "emmet_language_server", "gopls", "jsonls",
    "marksman", "pyright", "rust_analyzer", "yamlls",
}
for _, server in ipairs(servers) do
    if configs[server] then
        vim.lsp.start({
            name = server,
            cmd = configs[server].default_config.cmd,
            root_dir = configs[server].default_config.root_dir,
            capabilities = capabilities,
            settings = configs[server].default_config.settings,
        })
    end
end

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})