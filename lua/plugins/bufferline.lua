return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",          -- show buffers instead of tabs
        numbers = "ordinal",
        diagnostics = "nvim_lsp",  -- show LSP error/warning icons
        separator_style = "slant", -- nice slanted separators
        show_buffer_close_icons = true,
        show_close_icon = false,
        always_show_bufferline = true,
      },
    })

    -- Keymaps for jumping to buffers (VSCode-like tabs)
    vim.keymap.set("n", "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>")
    vim.keymap.set("n", "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>")
    vim.keymap.set("n", "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>")
    vim.keymap.set("n", "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>")
    vim.keymap.set("n", "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>")
    vim.keymap.set("n", "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>")
    vim.keymap.set("n", "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>")
    vim.keymap.set("n", "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>")
    vim.keymap.set("n", "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>")

    -- Close buffer
    vim.keymap.set("n", "<leader>bd", "<Cmd>bdelete<CR>")

    -- Cycle through buffers
    vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>")
    vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>")
  end,
}

