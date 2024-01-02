return {
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed or {}, { "hadolint", "elixir-ls", "stylua", "shfmt" })
		end,
	},
}
