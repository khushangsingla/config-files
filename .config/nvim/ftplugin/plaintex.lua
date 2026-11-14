local map = vim.keymap.set
local opts = { buffer = true }

map("x", "<C-\\>c", "^o^I% <Esc><Esc>", opts)
map("x", "<C-\\>u", "^o^ld<Esc>", opts)
map("n", "<C-\\>c", "^I% <Esc><Esc>", opts)
map("n", "<C-\\>u", "^I<Del><Del><Esc>", opts)
map("i", "<C-B>", [[\textbf{]], opts)

vim.opt_local.colorcolumn = "81"
