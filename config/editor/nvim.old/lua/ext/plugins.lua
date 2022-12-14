return function(use)
	require("ext.ui.treesitter")(use)
	require("ext.ui.tree")(use)
	require("ext.ui.decoration")(use)
	require("ext.ui.which-key")(use)
	require("ext.ui.alpha")(use)

	require("ext.util.telescope")(use)
	require("ext.util.misc")(use)

	require("ext.editor.lsp")(use)
	require("ext.editor.completion")(use)
	require("ext.editor.wakatime")(use)
	require("ext.editor.zen")(use)
	require("ext.editor.git")(use)
	require("ext.editor.project")(use)

	require("ext.lang.c")(use)
	require("ext.lang.rust")(use)
	require("ext.lang.neorg")(use)
end
