return function(use)
	use({
		"hrsh7th/nvim-cmp",
		event = { "BufRead", "BufNewFile" },
		requires = {
			"hrsh7th/cmp-nvim-lsp",
			"saadparwaiz1/cmp_luasnip",
			"L3MON4D3/LuaSnip",
			{ "hrsh7th/cmp-buffer", event = { "BufRead", "BufNewFile" } },
			"windwp/nvim-autopairs",
		},
		config = function()
			local luasnip = require("luasnip")
			local cmp = require("cmp")
			local kind = require("ext.editor.cmp.kind")
			require("nvim-autopairs").setup({})

			cmp.setup({
				formatting = {
					fields = { "kind", "abbr" },
					format = function(_, vim_item)
						vim_item.kind = kind[vim_item.kind] or ""
						return vim_item
					end,
				},

				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},

				mapping = cmp.mapping.preset.insert({
					["<C-d>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<CR>"] = cmp.mapping.confirm({
						behavior = cmp.ConfirmBehavior.Replace,
						select = true,
					}),
					["<Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						elseif luasnip.expand_or_jumpable() then
							luasnip.expand_or_jump()
						else
							fallback()
						end
					end, { "i", "s" }),
					["<S-Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif luasnip.jumpable(-1) then
							luasnip.jump(-1)
						else
							fallback()
						end
					end, { "i", "s" }),
				}),

				sources = {
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "buffer" },
				},
			})

			local cmp_autopairs = require("nvim-autopairs.completion.cmp")
			local cmp = require("cmp")
			cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
		end,
	})
end
