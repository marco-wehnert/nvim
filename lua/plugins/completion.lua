return {
  {
    "hrsh7th/nvim-cmp",
    lazy = false,
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",   -- LSP source
      "hrsh7th/cmp-buffer",     -- buffer words
      "hrsh7th/cmp-path",       -- file paths
      "hrsh7th/cmp-cmdline",    -- command-line completion (optional)
      "L3MON4D3/LuaSnip",       -- snippet engine (optional)
      "saadparwaiz1/cmp_luasnip", -- snippet completions (optional)
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          -- ["<Tab>"] = cmp.mapping(function(fallback)
          --   if cmp.visible() then
          --     cmp.select_next_item()
          --   elseif luasnip.expand_or_jumpable() then
          --     luasnip.expand_or_jump()
          --   else
          --     fallback()
          --   end
          -- end, { "i", "s" }),
          -- ["<S-Tab>"] = cmp.mapping(function(fallback)
          --   if cmp.visible() then
          --     cmp.select_prev_item()
          --   elseif luasnip.jumpable(-1) then
          --     luasnip.jump(-1)
          --   else
          --     fallback()
          --   end
          -- end, { "i", "s" }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" }, -- completions from Pyright
          { name = "luasnip" },  -- snippets
          { name = "buffer" },   -- words in current buffer
          { name = "path" },     -- file paths
        }),
        -- experimental = {
        --   ghost_text = true, -- shows inline preview of completion (like VSCode)
        -- },
      })

      -- Optional: cmdline completion
      -- cmp.setup.cmdline(":", {
      --   mapping = cmp.mapping.preset.cmdline(),
      --   sources = {
      --     { name = "path" },
      --     { name = "cmdline" },
      --   },
      -- })
    end,
  }
}

