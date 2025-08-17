return {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lua'},

            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        },
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-n>'] = cmp.mapping.select_next_item(),
                    ['<C-p>'] = cmp.mapping.select_prev_item(),
                    ['<CR>'] = cmp.mapping.confirm({select=true}),
                    ['<C-Space>'] = cmp.mapping.complete(),
                }),
                sources = {
                    { name = 'nvim_lsp' },
                    { name = 'buffer' },
                },
            })

            local lsp = require("lsp-zero").preset({})
            lsp.on_attach(function(client, bufnr)
                print("LSP attached:", client.name)
            end)
            lsp.ensure_installed({
                "lua_ls",
                "pyright",
            })
            lsp.setup()
        end
    },
}
