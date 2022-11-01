vim.o.guifont = "JetBrains Mono:px=8"
return {
	theme = {
		name = "tokyonight",
		repo = "folke/tokyonight.nvim",
		rc = function()
			vim.cmd([[colorscheme tokyonight-night]])
		end,
	},
	treesitter = {
		ensure_installed = { "c", "vim", "lua", "javascript", "typescript", "bash", "vue", "json5", "json", "jsonc" },
	},
	lsp = {
		servers = { "taplo", "sumneko_lua", "tsserver", "volar", "tailwindcss", "jsonls", "pyright" },
		linters = { "eslint_d", "shellcheck" },
		formatters = { "stylua", "prettierd", "clang_format", "shellharden", "shfmt", "rustfmt", "black" },
	},
}
