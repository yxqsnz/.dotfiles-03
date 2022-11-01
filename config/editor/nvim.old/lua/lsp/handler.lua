local mod = {
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
}
local border = {
      {"🭽", "FloatBorder"},
      {"▔", "FloatBorder"},
      {"🭾", "FloatBorder"},
      {"▕", "FloatBorder"},
      {"🭿", "FloatBorder"},
      {"▁", "FloatBorder"},
      {"🭼", "FloatBorder"},
      {"▏", "FloatBorder"},
}

-- LSP settings (for overriding per client)
mod.handlers =  {
  ["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = border}),
  ["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, {border = border }),
}

function mod.on_attach(client, bufnr)
	require("lsp.maps")(bufnr)

	if client.server_capabilities.colorProvider then
		require("document-color").buf_attach(bufnr)
	end
end

return mod
