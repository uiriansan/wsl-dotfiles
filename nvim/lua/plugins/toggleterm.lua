return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				size = 24,
				open_mapping = [[<leader>t]],
				autochdir = true,
				start_in_insert = true,
				insert_mappings = false,
				persist_size = true,
				persist_mode = true,
				direction = "horizontal",
				close_on_exit = true,
				auto_scroll = true,
				on_create = function() end,
				on_open = function() end,
				on_close = function() end,
				on_stdout = function() end,
				on_stderr = function() end,
				on_exit = function() end,
			})
		end,
	},
}
