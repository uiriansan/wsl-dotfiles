return {
	{
		"catppuccin/nvim",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				color_overrides = {
					-- latte = {
					-- 	rosewater = "#f5e0dc",
					-- 	flamingo = "#f2cdcd",
					-- 	pink = "#f5c2e7",
					-- 	mauve = "#cba6f7",
					-- 	red = "#f38ba8",
					-- 	maroon = "#eba0ac",
					-- 	peach = "#fab387",
					-- 	yellow = "#f9e2af",
					-- 	green = "#a6e3a1",
					-- 	teal = "#94e2d5",
					-- 	sky = "#89dceb",
					-- 	sapphire = "#74c7ec",
					-- 	blue = "#89b4fa",
					-- 	lavender = "#b4befe",
					-- 	text = "#cdd6f4",
					-- 	subtext1 = "#bac2de",
					-- 	subtext0 = "#a6adc8",
					-- 	overlay2 = "#9399b2",
					-- 	overlay1 = "#7f849c",
					-- 	overlay0 = "#6c7086",
					-- 	surface2 = "#585b70",
					-- 	surface1 = "#45475a",
					-- 	surface0 = "#313244",
					-- 	base = "#1e1d2b",
					-- 	mantle = "#382f54",
					-- 	crust = "#382f54",
					-- },
				},
			})
			vim.cmd([[ colorscheme catppuccin-mocha ]])
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
		"navarasu/onedark.nvim",
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
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
	},
	{
		"EdenEast/nightfox.nvim",
		priority = 1000,
	},
	{
		"marko-cerovac/material.nvim",
		priority = 1000,
	},
	{
		"embark-theme/vim",
		priority = 1000,
		-- config = function()
		-- 	vim.cmd([[ colorscheme embark ]])
		-- end,
	},
	{
		"sainnhe/sonokai",
		priority = 1000,
	},
	{
		"yazeed1s/minimal.nvim",
		priority = 1000,
	},
}
