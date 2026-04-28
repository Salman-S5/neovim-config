return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    main = "nvim-treesitter",
    opts = {
        ensure_installed = { "lua", "python", "c", "cpp", "java" },
        highlight = { enable = true },
        indent = { enable = true },
    },
}
