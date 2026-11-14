local map = vim.keymap.set
local remap = { remap = true }

-- Edit and reload the active config.
map("n", "<leader>ev", ":vsplit $MYVIMRC<CR>")
map("n", "<leader>sv", ":source $MYVIMRC<CR>")

-- The original `:map` mappings applied in normal, visual/select, and operator-pending modes.
map({ "n", "v", "o" }, "<leader>tn", ":tabn<CR>", remap)
map({ "n", "v", "o" }, "<leader>tp", ":tabp<CR>", remap)
map({ "n", "v", "o" }, "<leader>te", ":tabe ", remap)
map({ "n", "v", "o" }, "<leader>gt", ":tabn ", remap)

-- Insert-mode completion and escape shortcuts.
map("i", "<S-Tab>", "<C-d>")
map("i", "jj", "<C-n>")
map("i", "kk", "<C-p>")
map("i", "ll", "<C-x><C-o>")
map("i", "jk", "<Esc>")
map("i", "kj", "<Esc>")

-- Normal-mode editing/navigation.
map("n", "Y", "Vy")
map("n", "H", "^")
map("n", "L", "$")
map("n", "<Esc><Esc>", ":nohl<CR>")
map("n", "<C-k>", "<C-y>")
map("n", "<C-j>", "<C-e>")
map("n", "<C-p>", "<C-w>}")
map("n", "<C-q>", ":pclose<CR>")
map("n", "<leader>q", ":cclose<CR>")
map("n", "<leader>t", "<C-w><C-]><C-w>T")
