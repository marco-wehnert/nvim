return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({})
        vim.api.nvim_create_autocmd("BufEnter", {
            callback = function()
                if vim.bo.filetype == "neo-tree" then
                    local wins = vim.api.nvim_list_wins()
                    if #wins == 1 then
                        vim.cmd("quit")
                    end
                end
            end,
        })
    end,
}
