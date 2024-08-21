return {
	{
		"catppuccin/nvim",
		priority = 1000,
		config = function()
			vim.cmd([[ colorscheme catppuccin-mocha ]])
			require("catppuccin.palettes").get_palette("mocha")
		end,
	},
	{
		"folke/tokyonight.nvim",
		priority = 1000,
	},
	{
		"morhetz/gruvbox",
		priority = 1000,
	},
	{
		"sainnhe/everforest",
		priority = 1000,
	},
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000,
	},
	{
		"Mofiqul/dracula.nvim",
		priority = 1000,
	},
	{
		"rose-pine/neovim",
		priority = 1000,
	},
}
