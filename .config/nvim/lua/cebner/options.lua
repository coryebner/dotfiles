local set = vim.opt --global options
local wo = vim.wo --window-local options
local bo = vim.bo -- buffer-local options

set.nu = true
set.relativenumber = true

set.hidden = true
set.errorbells = false

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true

set.smartindent = true

set.wrap = false

set.swapfile = false
set.backup = false
set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.undofile = true

-- set.hlsearch = false
set.incsearch = true

set.termguicolors = true

set.scrolloff = 8
set.signcolumn = "yes"

set.colorcolumn = "80"

vim.g.mapleader = " "

-- vim.opt.background = "dark" -- or "light" for light mode
-- vim.cmd([[colorscheme gruvbox]])

vim.g.tokyonight_style = "night"
vim.cmd[[colorscheme tokyonight]]
