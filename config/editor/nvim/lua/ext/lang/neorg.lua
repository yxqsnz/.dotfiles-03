return function(use)
	use({
		"nvim-neorg/neorg",
		config = function()
			require("neorg").setup({
				load = {
					["core.defaults"] = {},
					["core.keybinds"] = {},
					["core.norg.completion"] = {
						config = {
							engine = "nvim-cmp",
						},
					},
					["core.norg.concealer"] = {
						config = {
							icon_preset = "diamond",
						},
					},
				},
			})
		end,
		event = { "BufRead", "BufNewFile" },
		ft = "norg",
		after = "nvim-treesitter",
		requires = "nvim-lua/plenary.nvim",
	})
end
