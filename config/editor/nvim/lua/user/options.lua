vim.opt.confirm = true

-- Tab
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Hybrid number show
vim.opt.number = true
vim.opt.relativenumber = true

-- Style
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

-- Hl search
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.smartindent = true

-- Perf
vim.opt.updatetime = 10
-- Misc
vim.opt.numberwidth = 5
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.clipboard = "unnamedplus"

-- File
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.fileencoding = "utf-8"
vim.opt.backup = false
vim.opt.conceallevel = 3
vim.opt.foldenable = false
vim.opt.foldmethod = "manual"

-- Keyboard
vim.opt.timeoutlen = 100
vim.g.mapleader = " "

-- UI
vim.opt.laststatus = 3
vim.opt.showmode = false
vim.opt.ruler = false
vim.opt.pumheight = 10
vim.opt.wrap = false
vim.opt.completeopt = "menu,preview"
vim.opt.cmdheight = 0

--vim.optpt.list = true
vim.opt.listchars:append("space:⋅")
