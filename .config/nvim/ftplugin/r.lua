vim.fn["plug#begin"]()
vim.cmd([[Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}]])
vim.fn["plug#end"]()

vim.keymap.set("n", "ZZ", ":w<CR> \\| :qa<CR>", { buffer = true })
