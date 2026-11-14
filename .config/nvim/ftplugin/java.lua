local project_dir = vim.fs.root(0, { ".git", ".envrc", ".classpath", ".project", "pom.xml" })
  or vim.fn.getcwd()

local map = vim.keymap.set
local opts = { buffer = true }
map("x", "<C-\\>c", "^o^I// <Esc><Esc>", opts)
map("x", "<C-\\>u", "^o^2ld<Esc><Esc>", opts)
map("n", "<C-\\>c", "^I// <Esc>", opts)
map("n", "<C-\\>u", "^I<Del><Del><Del><Esc><Esc>", opts)

-- Keep this plugin setup here for now; plugin-manager declarations can be
-- centralized separately from the filetype migration.
vim.fn["plug#begin"]()
vim.cmd([[Plug 'mfussenegger/nvim-jdtls']])
vim.fn["plug#end"]()

local config = {
  cmd = { "/usr/bin/jdtls" },
  root_dir = project_dir,
  settings = {
    ["java.project.sourcePaths"] = { project_dir },
    java = {
      eclipse = { downloadSources = true },
      autobuild = { enabled = false },
    },
  },
}

require("jdtls").start_or_attach(config)
