return {
	{
		"folke/which-key.nvim",
		event = "VimEnter",
		config = function()
			require("which-key").setup({
				preset = "helix",
				sort = {
					"manual",
				},
				win = {
					title = false,
					border = false,
					padding = { 1, 2 },
				},
			})

			require("which-key").add({
				{ "<leader>c", group = "[C]ode", icon = "" },
				{ "<leader>e", desc = "Toggle file tree." },
				{ "<leader>d", desc = "Toggle Trouble diagnostics." },
				{ "<leader>D", group = "Trouble diagnostics options." },
				{ "<leader>t", desc = "Toggle terminal." },
				{ "<leader>T", group = "Terminal options." },
				{ "<leader>g", desc = "Toggle LazyGit." },
				{ "<leader>G", group = "LazyGit options." },
				{ "<leader>r", group = "[R]ename" },
				{ "<leader>s", group = "[S]earch" },
				{ "<leader>w", group = "[W]orkspace" },
				{ "<leader>h", group = "Git [H]unk", mode = { "n", "v" } },
			})
		end,
	},
}
