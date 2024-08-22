-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		cmd = "Neotree",
		keys = {
			{ "<leader>e", ":Neotree reveal<CR>", desc = "NeoTree reveal" },
		},
		config = function()
			require("neo-tree").setup({
				show_path = "none",
				close_if_last_window = true,
				auto_clean_after_session_restore = true,
				enable_diagnostics = false,
				enable_git_status = false,
				open_files_do_not_replace_types = { "terminal", "trouble", "qf" }, -- when opening files, do not use windows containing these filetypes or buftypes
				sources = {
					"filesystem",
					"buffers",
					"git_status",
				},
				source_selector = {
					winbar = true,
					statusline = false, -- toggle to show selector on statusline
					content_layout = "center",
					tabs_layout = "equal",
					sources = {
						{ source = "filesystem", display_name = "" .. " Files" },
						{ source = "buffers", display_name = "" .. " Bufs" },
						{ source = "git_status", display_name = "" .. " Git" },
					},
				},
				default_component_configs = {
					container = {
						enable_character_fade = true,
					},
					indent = {
						indent_size = 2,
						padding = 1,
						with_markers = false,
						indent_marker = "▏",
						last_indent_marker = "▏",
						highlight = "NeoTreeIndentMarker",
						with_expanders = true,
						expander_collapsed = "",
						expander_expanded = "",
						expander_highlight = "NeoTreeExpander",
					},
					icon = {
						folder_closed = "",
						folder_open = "",
						folder_empty = "󰜌",
						-- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
						-- then these will never be used.
						default = "*",
						highlight = "NeoTreeFileIcon",
					},
					modified = {
						symbol = "",
						highlight = "NeoTreeModified",
					},
					name = {
						trailing_slash = false,
						use_git_status_colors = true,
						highlight = "NeoTreeFileName",
					},
				},
				window = {
					position = "left",
					width = 40,
					mapping_options = {
						noremap = true,
						nowait = true,
					},
					mappings = {},
				},
				filesystem = {
					bind_to_cwd = true,
					follow_current_file = {
						enabled = true,
					},
					hijack_netrw_behavior = "open_default",
					use_libuv_file_watcher = true,
					filtered_items = {
						visible = false,
						show_hidden_count = true,
						hide_dotfiles = false,
						hide_gitignored = false,
						hide_by_name = {
							-- 'node_modules'
						},
						hide_by_pattern = {
							-- '*.env'
						},
						never_show = {
							-- '.DS_Store'
						},
					},
					window = {
						mappings = {
							["<leader>e"] = "close_window",
						},
					},
				},
				buffers = {
					follow_current_file = {
						enabled = true,
					}, -- This will find and focus the file in the active buffer every
					-- time the current file is changed while the tree is open.
					group_empty_dirs = true, -- when true, empty folders will be grouped together
					show_unloaded = true,
					window = {
						mappings = {
							["bd"] = "buffer_delete",
							["<bs>"] = "navigate_up",
							["."] = "set_root",
						},
					},
				},
				git_status = {
					window = {
						position = "float",
						mappings = {},
					},
				},
				event_handlers = {
					{
						event = "neo_tree_buffer_enter",
						handler = function()
							local hl = vim.api.nvim_get_hl_by_name("Cursor", true)
							hl.blend = 100
							vim.api.nvim_set_hl(0, "Cursor", hl)
							vim.opt.guicursor:append("a:Cursor/lCursor")
						end,
					},
					{
						event = "neo_tree_buffer_leave",
						handler = function()
							local hl = vim.api.nvim_get_hl_by_name("Cursor", true)
							hl.blend = 0
							vim.api.nvim_set_hl(0, "Cursor", hl)
							vim.opt.guicursor:remove("a:Cursor/lCursor")
						end,
					},
				},
				-- change neo-tree directories color
				vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "orange" }),
				vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "white" }),
				vim.api.nvim_set_hl(0, "NeoTreeRootName", { bold = true, fg = "gray", bg = "" }),
			})
		end,
	},
}
