local map = vim.keymap.set
local opts = { buffer = true }

map("x", "<C-\\>c", "^o^I// <Esc><Esc>", opts)
map("x", "<C-\\>u", "^o^2ld<Esc><Esc>", opts)
map("n", "<C-\\>c", "^I// <Esc>", opts)
map("n", "<C-\\>u", "^I<Del><Del><Del><Esc><Esc>", opts)
