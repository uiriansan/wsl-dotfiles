-- Save and load session

return {
	{
		"rmagatti/auto-session",
		lazy = false,
		dependencies = {
			"nvim-telescope/telescope.nvim",
		},
		config = function()
			require("auto-session").setup({
				auto_session_enabled = true,
				auto_session_root_dir = vim.fn.stdpath("data") .. "/sessions/",
				auto_session_suppress_dirs = { "~/" },
				auto_save_enabled = true,
				auto_restore_enabled = true,
				auto_session_create_enabled = true,
				-- load last session if session for cwd not found
				auto_session_enable_last_session = true,
			})
		end,
	},
}
