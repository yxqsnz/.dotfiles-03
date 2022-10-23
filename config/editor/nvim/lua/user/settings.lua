return {
	theme = {
		name = "tokyonight",
		repo = "folke/tokyonight.nvim",
		rc = function()
			vim.cmd([[colorscheme tokyonight-night]])
		end,
	},
	treesitter = {
		ensure_installed = { "c", "lua", "javascript", "typescript", "bash", "vue" },
	},
	lsp = {
		servers = { "sumneko_lua", "tsserver", "volar" },
		linters = { "eslint_d" },
		formatters = { "stylua", "prettierd" },
	},
}
