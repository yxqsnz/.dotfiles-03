return function(use)
	use({
		"wakatime/vim-wakatime",
		event = { "BufNewFile", "BufRead" },
	})
end
