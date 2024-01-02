return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"tsserver",
				"elixirls",
				"stylua",
				"shfmt",
				"spellcheck",
				"lua_ls",
			},
		},
	},
}
