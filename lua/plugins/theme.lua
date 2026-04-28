return {
    { "savq/melange-nvim", lazy = true },
    { 
        "nyoom-engineering/oxocarbon.nvim", 
        priority = 1000, 
        config = function()
            vim.cmd.colorscheme("oxocarbon")
        end 
    },
    { "catppuccin/nvim", name = "catppuccin", lazy = true },
    { "folke/tokyonight.nvim", lazy = true },
}
