return function(use)
	require("ext.ui.treesitter")(use)
	require("ext.ui.tree")(use)
	require("ext.ui.decoration")(use)
	require("ext.ui.which-key")(use)

	require("ext.util.telescope")(use)

	require("ext.editor.lsp")(use)
	require("ext.editor.completion")(use)

	require("ext.lang.c")(use)
	require("ext.lang.rust")(use)
end
