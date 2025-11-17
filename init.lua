--[[
=======================================================================
Configuration file for Neovim
Maintainer: Marco Wehnert

Features:
  - LSP configuration
    - Lua
    - Python
  - Treesitter
  - Neo-tree, Telescope
  - Git + Lazygit
  - autopairs
  - lualine, tokyonight
=======================================================================
--]]

require("config.options")
require("config.keymap")
require("config.lazy")


-- LSP for Lua --------------------------------------------------------
vim.lsp.config("lua_ls", {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = { ".luarc.json", ".luarc.jsonc" },
})

vim.lsp.enable('lua_ls')

-- LSP for Python -----------------------------------------------------
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local capabilities = cmp_nvim_lsp.default_capabilities()
vim.lsp.config("pyright", {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_markers = { "pyproject.toml", "setup.py", ".git" },
  capabilities = capabilities,
})

vim.lsp.enable('pyright')
