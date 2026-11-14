local map = vim.keymap.set
local opts = { buffer = true }

map("x", "<C-\\>c", "^o^I// <Esc><Esc>", opts)
map("x", "<C-\\>u", "^o^2ld<Esc><Esc>", opts)
map("n", "<C-\\>c", "^I// <Esc>", opts)
map("n", "<C-\\>u", "^I<Del><Del><Del><Esc><Esc>", opts)

-- Keep the existing filetype-scoped vim-plug declarations for now.
vim.fn["plug#begin"]()
vim.cmd([[Plug 'https://github.com/ludovicchabant/vim-gutentags']])
vim.cmd([[Plug 'https://github.com/dhananjaylatkar/cscope_maps.nvim']])
vim.fn["plug#end"]()

require("cscope_maps").setup()
