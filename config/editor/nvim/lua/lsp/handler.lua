local mod = {
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
}

function mod.on_attach(_, bufnr)
	require("lsp.maps")(bufnr)
end

return mod
