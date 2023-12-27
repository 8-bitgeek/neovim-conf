require("mason").setup{
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    }
}

require("mason-lspconfig").setup{
    ensure_installed = {                -- 确保要安装的 lsp 插件
        "clangd", "lua_ls"
    }
}
