return {
  "ray-x/lsp_signature.nvim",
  event = "LspAttach",
  opts = {
    bind = true,               -- mandatory
    floating_window = true,    -- show in floating window
    hint_enable = true,        -- virtual text hint (inline)
    hi_parameter = "IncSearch",-- highlight current parameter
    handler_opts = {
      border = "rounded"       -- border style: rounded, single, double, shadow
    },
  },
  config = function(_, opts)
    require("lsp_signature").setup(opts)
  end,
}

