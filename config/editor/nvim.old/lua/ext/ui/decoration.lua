return function(use)
	use({
		"feline-nvim/feline.nvim",
		after = "noice.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = function()
			require("feline").setup({})
		end,
	})

	use({
		"folke/noice.nvim",
		event = "VimEnter",
		config = function()
			require("noice").setup({
				lsp = {
					signature = {
						enabled = false,
						auto_open = { enabled = false },
					},
					hover = {
						enabled = false,
					},
					override = {
						-- override the default lsp markdown formatter with Noice
						["vim.lsp.util.convert_input_to_markdown_lines"] = false,
						-- override the lsp markdown formatter with Noice
						["vim.lsp.util.stylize_markdown"] = false,
						-- override cmp documentation with Noice (needs the other options to work)
						["cmp.entry.get_documentation"] = false,
					},
				},
			})

			local notify = vim.notify

			vim.notify = function(msg, ...)
				if msg ~= "<" then
					notify(msg, ...)
				end
			end
		end,
		requires = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			--			"rcarriga/nvim-notify",
		},
	})

	use({
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufRead", "BufNewFile" },
		config = function()
			require("indent_blankline").setup({
				-- for example, context is off by default, use this to turn it on
				show_current_context = true,
				show_current_context_start = false,
			})
		end,
	})
	use({
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		event = { "BufRead", "BufNewFile" },
		config = function()
			require("todo-comments").setup({})
		end,
	})

	use({
		"akinsho/bufferline.nvim",
		event = { "BufRead", "BufNewFile" },
		requires = { "kyazdani42/nvim-web-devicons" },
		config = function()
			require("bufferline").setup({
				options = {
					---@diagnostic disable-next-line: assign-type-mismatch
					diagnostics = "nvim_lsp",
					always_show_bufferline = false,
					indicator = {
						style = "underline",
					},
					offsets = {
						{
							filetype = "NvimTree",
							text = "File Explorer",
							text_align = "center",
							separator = true,
						},
					},
				},
			})
		end,
	})

	use({
		"lewis6991/gitsigns.nvim",
		event = { "BufRead", "BufNewFile" },

		config = function()
			require("gitsigns").setup()
		end,
	})
end
