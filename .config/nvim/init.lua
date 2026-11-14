-- Leader must be set before loading plugins and defining mappings.
vim.g.mapleader = ","

require("config.options")
require("config.keymaps")
require("config.plugins")
require("config.tabline")

-- Custom filetype detection formerly defined in filetype.vim.
vim.filetype.add({
  extension = {
    ipynb = "ipynb",
  },
})

-- Keep the existing Go LSP setup while the rest of the config is migrated.
require("lsp.go")
