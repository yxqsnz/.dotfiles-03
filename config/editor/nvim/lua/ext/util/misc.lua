return function(use)
	use({
		"numToStr/Comment.nvim",
		event = { "BufRead", "BufNewFile" },
		config = function()
			require("Comment").setup()
		end,
	})
end
