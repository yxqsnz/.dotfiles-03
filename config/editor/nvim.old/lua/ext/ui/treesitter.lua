return function(use)
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,

		event = { "BufNewFile", "BufRead" },

		config = function()
			local config = require("user.settings").treesitter

			local this = {
				sync_install = false,

				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},

				rainbow = {
					enable = true,
					extended_mode = true,
					max_file_lines = 100000,
				},

				endwise = {
					enable = true,
				},

				autotag = {
					enable = true,
				},

				context_commentstring = {
					enable = true,
				},
			}

			require("nvim-treesitter.configs").setup(vim.tbl_deep_extend("force", this, config))
		end,
		requires = {
			{ "RRethy/nvim-treesitter-endwise", after = "nvim-treesitter" },
			{ "p00f/nvim-ts-rainbow", after = "nvim-treesitter" },
			{ "windwp/nvim-ts-autotag", after = "nvim-treesitter" },
			{ "JoosepAlviste/nvim-ts-context-commentstring", after = "nvim-treesitter" },
		},
	})
end
