return function(use)
	use({
		"williamboman/mason.nvim",
		requires = { "williamboman/mason-lspconfig.nvim" },
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup()
		end,
	})

	use({
		"neovim/nvim-lspconfig",
		config = function()
			local config = require("user.settings").lsp

			for _, server in pairs(config.servers) do
				local handler = require("lsp.handler")
				local config_exists, server_config = pcall(require, "lsp.server." .. server)

				if config_exists then
					handler = vim.tbl_deep_extend("force", handler, server_config)
				end

				require("lspconfig")[server].setup(handler)
			end

			local signs = { Error = "● ", Warn = "● ", Info = "● ", Hint = "● " }

			for type, icon in pairs(signs) do
				local hl = "DiagnosticSign" .. type
				vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
			end
		end,
	})

	use({
		"jose-elias-alvarez/null-ls.nvim",
		event = { "BufRead", "BufNewFile" },
		requires = { "lukas-reineke/lsp-format.nvim" },
		config = function()
			local config = require("user.settings").lsp
			local null = require("null-ls")
			local sources = {}

			for _, linter in pairs(config.linters) do
				table.insert(sources, null.builtins.diagnostics[linter])
			end

			for _, formatter in pairs(config.formatters) do
				table.insert(sources, null.builtins.formatting[formatter])
			end

			null.setup({
				sources = sources,
				on_attach = require("lsp-format").on_attach,
			})
		end,
	})

	use({
		"mrshmllow/document-color.nvim",
		event = { "BufRead", "BufNewFile" },
		requires = {
			{
				"kosayoda/nvim-lightbulb",
				"ray-x/lsp_signature.nvim",
				requires = "antoinemadec/FixCursorHold.nvim",
			},
		},
		config = function()
			require("nvim-lightbulb").setup({ autocmd = { enabled = true } })
			require("document-color").setup({
				mode = "foreground",
			})
			require('lsp_signature').setup({
				bind = true,
				hint_enable = false,
				fix_pos = true,
				floating_window = true,
				handler_opts = {
		      border = "single"
       }
			})
		end,
	})

	use({
		"glepnir/lspsaga.nvim",
		event = {"BufRead", "BufNewFile"},
		cmd = "Lspsaga",
		config = function()
			local saga = require("lspsaga")
			saga.init_lsp_saga({
				code_action_lightbulb = {
		   	 enable = false
			  },
				symbol_in_winbar = {
					enable = true,
					separator = '  ',
				}
			})
		end,
	})

	use({
		"folke/trouble.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
		command = { "Trouble", "TroubleClose", "TroubleToggle", "TroubleRefresh" },
		config = function()
			require("trouble").setup({})
		end,
	})

	use({ "b0o/schemastore.nvim", module = "schemastore" })
end
