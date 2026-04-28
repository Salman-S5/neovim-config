return {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
	require("themery").setup({
	    themes = {
		-- Your Plugins
		"tokyonight",
		"melange",
		"oxocarbon",
		"catppuccin-mocha",
		-- Neovim Defaults
		"habamax",
		"lunaperche",
		"desert",
		"industry",
		"koehler",
		"quiet",
		"ron",
		"slate",
	    },
	    livePreview = true,
	})
    end,
}
