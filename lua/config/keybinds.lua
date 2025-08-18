-- To show all keybinds:
-- :Telescope keymaps
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
-- Navigate between panes
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
-- Leave insert mode in terminal with <Esc>
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
-- Show neo-tree
vim.keymap.set("n", "<leader>nt", ":Neotree show<CR>", { noremap = true, silent = true })
-- Toggle copy mode
vim.keymap.set("n", "<leader>cm", ":CopyMode<CR>", { noremap = true, silent = true })
-- Open lazygit
vim.keymap.set("n", "<leader>lg", ":LazyGit<CR>", { noremap = true, silent = true })
