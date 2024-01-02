return {
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed or {}, {
				"hadolint",
				"tsserver",
				"elixir-ls",
				"stylua",
				"shfmt",
				"spellcheck",
				"lua_ls",
			})
		end,
	},
}
