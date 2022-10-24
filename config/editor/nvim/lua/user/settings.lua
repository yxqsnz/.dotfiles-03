return {
	theme = {
		name = "tokyonight",
		repo = "folke/tokyonight.nvim",
		rc = function()
			vim.cmd([[colorscheme tokyonight-night]])
		end,
	},
	treesitter = {
		ensure_installed = { "c", "vim", "lua", "javascript", "typescript", "bash", "vue" },
	},
	lsp = {
		servers = { "taplo", "sumneko_lua", "tsserver", "volar", "tailwindcss" },
		linters = { "eslint" },
		formatters = { "stylua", "prettierd" },
	},
}
