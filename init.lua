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

vim.lsp.config("lua_ls", {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { ".luarc.json", ".luarc.jsonc" },
})

vim.lsp.enable('lua_ls')
--vim.lsp.enable('pyright')
