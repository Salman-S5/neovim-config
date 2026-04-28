return {
    {
        "williamboman/mason.nvim",
        opts = {},
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "clangd",
                "pyright",
                "ts_ls",
                "html",
                "cssls",
                "tailwindcss",
                "marksman",
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        config = function()
            local servers = {
                "clangd", "pyright", "ts_ls",
                "html", "cssls", "tailwindcss", "marksman",
            }
            for _, server in ipairs(servers) do
                vim.lsp.config(server, {})
            end

            vim.lsp.enable(servers)

            vim.keymap.set("n", "gd", vim.lsp.buf.definition)
            vim.keymap.set("n", "K", vim.lsp.buf.hover)
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
            vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
            vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
        end,
    },
}
