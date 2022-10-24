local mod = {
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
}

function mod.on_attach(client, bufnr)
	require("lsp.maps")(bufnr)

	if client.server_capabilities.colorProvider then
		require("document-color").buf_attach(bufnr)
	end
end

return mod
