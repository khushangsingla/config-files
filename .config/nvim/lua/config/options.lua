-- General behavior
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
vim.cmd("syntax on")
vim.cmd("filetype plugin on")

-- Indentation and tabs
vim.opt.autoindent = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Buffers, cursor, wrapping, folding, and scrolling
vim.opt.hidden = true
vim.opt.guicursor = ""
-- whichwrap is a special-character option; use its native option syntax here.
vim.cmd("set whichwrap+=<,>,[")
vim.opt.foldmethod = "syntax"
vim.opt.scrolloff = 5
vim.opt.undofile = true
vim.opt.mouse = ""

-- Preserve the existing Python provider paths for now.
vim.g.python_host_prog = "/home/khushangsingla/.neovim_pyvenv/bin/python"
vim.g.python3_host_prog = "/home/khushangsingla/.neovim_pyvenv/bin/python3"

vim.cmd.colorscheme("vim")
