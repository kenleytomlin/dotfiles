return {
	{
		"nvimdev/lspsaga.nvim",
		keys = function()
			return { { "gh", "<Cmd>Lspsaga finder<CR>", mode = { "n" } } }
		end,
		config = function()
			require("lspsaga").setup({
				finder = {
					keys = { toggle_or_open = "<CR>", quit = "<ESC>" },
					default = "ref+imp",
				},
				rename = { enable = false },
				lightbulb = { enable = false },
			})
		end,
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
	},
}
