return {
	{
		"utilyre/barbecue.nvim",
		name = "barbecue",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		config = function()
			local colors = require("catppuccin.palettes").get_palette("mocha")
			require("barbecue").setup({
				theme = {
					context = {
						fg = "gray",
					},
					dirname = { fg = "gray" },
					basename = { fg = "gray" },
				},
			})
		end,
	},
}
