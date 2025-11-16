return {
    'nvim-treesitter/nvim-treesitter',
    branch = "master",
    lazy = false, -- Load plugin immediately
    build = ":TSUpdate",
--    config = function()
--	local configs = require("nvim-treesitter.configs")
--	configs.setup({
--	    highlight = {
--    		enable = true,
--	    },
--	    indent = { enable = true },
--	    autotage = { enable = true },
--	    ensure_installed = {
--		"dockerfile",
--		-- "latex",
--		"lua",
--		"markdown",
--		"python",
--		"yaml",
--	    },
--	    auto_install = true,
--	})
--    end
}
