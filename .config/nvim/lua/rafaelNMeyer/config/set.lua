local opt = vim.opt

opt.guicursor = ""
opt.number = true
opt.relativenumber = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.smartindent = true
opt.scroll = 15
opt.incsearch = true
opt.termguicolors = true
opt.clipboard = "unnamedplus"

vim.g.mapleader = " "

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function() vim.highlight.on_yank() end,
})
