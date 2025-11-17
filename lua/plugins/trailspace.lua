return {
  "echasnovski/mini.trailspace",
  version = "*", -- always grab latest stable
  config = function()
    -- Load the plugin
    require("mini.trailspace").setup()

    -- Customize the highlight to be a red block
    vim.api.nvim_set_hl(0, "MiniTrailspace", { bg = "red" })

    -- Auto-trim trailing spaces on save
    vim.api.nvim_create_autocmd("BufWritePre", {
      callback = function()
        -- In case we have a file from taskwarrior we do
        -- not remove trailing spaces
        local filename = vim.api.nvim_buf_get_name(0)
        if not filename:match("task%.[%w%d]+%.task$") then
          require("mini.trailspace").trim()
        end
      end,
    })
  end,
}

