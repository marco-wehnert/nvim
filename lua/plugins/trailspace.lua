return {
  "echasnovski/mini.trailspace",
  version = "*", -- always grab latest stable
  config = function()
    -- Load the plugin
    require("mini.trailspace").setup()

    -- Customize the highlight to be a red block
    vim.api.nvim_set_hl(0, "MiniTrailspace", { bg = "red" })

    -- (Optional) Auto-trim trailing spaces on save
    vim.api.nvim_create_autocmd("BufWritePre", {
      callback = function()
        require("mini.trailspace").trim()
      end,
    })
  end,
}

