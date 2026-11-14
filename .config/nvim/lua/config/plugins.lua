-- Keep vim-plug for now; changing plugin managers is a separate step from
-- migrating the configuration itself.
vim.g.instant_username = "khushangsingla"

local plug_begin = vim.fn["plug#begin"]
local plug_end = vim.fn["plug#end"]

plug_begin()
vim.cmd("Plug 'jbyuki/instant.nvim' " .. '" live editing')
vim.cmd("Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " .. '" fzf')
vim.cmd("Plug 'neovim/nvim-lspconfig'")
vim.cmd("Plug 'OXY2DEV/markview.nvim'")
plug_end()
