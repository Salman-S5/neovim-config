return {
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        keys = {
            { "<leader>e", "<cmd>NvimTreeToggle<cr>" },
        },
        opts = {
	    update_focused_file = {
		enable = true,
		update_root = true,
	    },
            view = {
                width = 30,
                side = "left",
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = false,
            },
        },
    },
}
