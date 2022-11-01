return function(use)
	use({
		"nvim-telescope/telescope.nvim",

		requires = {
			"nvim-lua/plenary.nvim",
		},
		after = "noice.nvim",

		cmd = "Telescope",

		config = function()
			require("telescope").load_extension("noice")
			require("telescope").setup({})
		end,
	})
end
