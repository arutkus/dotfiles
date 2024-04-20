local global = vim.g
local opt = vim.opt

-- Global
global.mapleader = "-"
global.maplocalleader = "-"

-- System
opt.clipboard:append({"unnamed", "unnamedplus"})
opt.shortmess:append("c")
opt.swapfile = false
opt.backup = false
opt.visualbell = true

opt.updatetime = 50

opt.splitright = true
opt.splitbelow = true

-- Visuals
opt.termguicolors = true
opt.background = "dark"

opt.showtabline = 2
opt.number = true
opt.relativenumber = false
opt.numberwidth = 6

opt.signcolumn = "yes"
opt.cursorline = true

opt.laststatus = 2
opt.showmode = false
opt.ruler = true

-- Editor
opt.scrolloff = 10
opt.wrap = false

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.shiftround = true
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Searching
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Folding
opt.foldenable = false
opt.conceallevel = 1

opt.completeopt = {'menu', 'menuone', 'noselect'}

-- DELETE?
-- opt.path:append("**")
-- opt.ttyfast = true
-- opt.autowrite = true
-- opt.list = false
-- opt.formatoptions:remove({'c', 'r', 'o'})
-- opt.linebreak = true
