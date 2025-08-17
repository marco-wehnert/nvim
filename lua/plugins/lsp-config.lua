return {
	{
		"williamboman/mason.nvim",
		--		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		--		lazy = false,
		--        opts = {
		--            auto_install = true,
		--        }
        dependencies = {
            "williamboman/mason.nvim",
        },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		-- lazy = false,
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				-- on_attach = function(client, bufnr)
				-- keybindings/callbacks go here
				-- end,
				capabilities = capabilities,
				settings = {
					python = {
						analysis = {
							typeCheckingMode = "strict",
							autoSearchPaths = true,
							useLibraryCodeForTypes = true,
						},
					},
				},
			})

			-- vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			-- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			-- vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
		end,
	},
}
