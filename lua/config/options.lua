vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.cc = { 80 }
vim.opt.wrap = false
vim.opt.mouse = ""

local plain = false
vim.api.nvim_create_user_command("CopyMode", function()
    plain = not plain
    local gitsigns = package.loaded["gitsigns"]
    if plain then
        vim.opt.number = false
        vim.opt.relativenumber = false
        vim.opt.signcolumn = "no"
        if gitsigns then
            gitsigns_enabled = true
            gitsigns.toggle_signs(false)
        else
            gitsigns_enabled = false
        end
    else
        vim.opt.number = true
        vim.opt.relativenumber = true
        vim.opt.signcolumn = "yes"
        if gitsigns and gitsigns_enabled then
            gitsigns.toggle_signs(true)
        end
    end
end, {})
