return function(use)
	use({
		"nvim-lualine/lualine.nvim",
		after = "noice.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = function()
			require("lualine").setup({})
		end,
	})

	use({
		"folke/noice.nvim",
		event = "VimEnter",
		config = function()
			require("noice").setup({})

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
end
