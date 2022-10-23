local which = require("which-key")

which.register({
	e = { "<cmd>NvimTreeToggle<cr>", "Open file manager" },
	f = {
		w = { "<cmd>Telescope live_grep<cr>", "Find word" },
		f = { "<cmd>Telescope find_files<cr>", "Find files" },
		k = { "<cmd>Telescope keymaps<cmd>", "Find Keymaps" },
	},
	G = {
		s = { "<cmd>Telescope git_status<cr>", "Show git status" },
		c = { "<cmd>Telescope git_commits<cr>", "Show git commits" },
	},
}, { prefix = vim.g.mapleader })

which.register({
	["<C-s>"] = { "<cmd>silent write<cr>", "Save changes" },
})

which.register({
	["<SPACE>"] = {
		["<SPACE>"] = { "<cmd>Telescope find_files<cr>", "Find files" },
	},
})

vim.keymap.set({ "n", "i" }, "<A-Down>", "<cmd>m .+1<cr>")
vim.keymap.set({ "n", "i" }, "<A-Up>", "<cmd>m .-2<cr>")
vim.keymap.set("n", "<ESC>", "<cmd>:nohl<cr>")
