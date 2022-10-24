return function(use)
	use({
		"ahmedkhalf/project.nvim",
		after = "telescope.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("project_nvim").setup({})
			require("telescope").load_extension("projects")
		end,
	})
end
