return function(use)
	use({
		"folke/zen-mode.nvim",
		cmd = "ZenMode",
		module = "zen-mode",
		config = function()
			require("zen-mode").setup({
				on_open = function(win)
					vim.o.laststatus = 0
				end,
				on_close = function()
					vim.o.laststatus = 3
				end,
			})
		end,
	})
end
