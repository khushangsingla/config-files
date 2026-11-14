vim.opt_local.foldmethod = "indent"

local map = vim.keymap.set
local opts = { buffer = true }
map("n", "<C-\\>c", "I<!-- <Esc>A --> <Esc>", opts)
map("n", "<C-\\>u", "I<Del><Del><Del><Del><Del><Esc>A<BS><BS><BS><BS><Esc>", opts)
