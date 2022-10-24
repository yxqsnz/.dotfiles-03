return function(use)
	use({
		"nvim-tree/nvim-tree.lua",
		requires = { "nvim-tree/nvim-web-devicons" },
		cmd = "NvimTreeToggle",

		config = function()
			require("nvim-tree").setup({
				sort_by = "case_sensitive",
				hijack_unnamed_buffer_when_opening = true,

				view = {
					side = "left",
					adaptive_size = true,
					mappings = {
						list = {
							{ key = "u", action = "dir_up" },
						},
					},
				},

				renderer = {
					group_empty = true,
					highlight_git = true,
					icons = {
						git_placement = "after",
					},
				},

				diagnostics = {
					enable = true,
				},

				filters = {
					dotfiles = true,
				},

				sync_root_with_cwd = true,
				respect_buf_cwd = true,
				update_focused_file = {
					enable = true,
					update_root = true,
				},
			})
		end,
	})
end
