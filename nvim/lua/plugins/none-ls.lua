return {
	{
		"nvimtools/none-ls.nvim",
		opts = function(_, opts)
			local nls = require("null-ls")
			opts.root_dir = opts.root_dir
				or require("none-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git")
			opts.sources = {
				nls.builtins.formatting.stylua,
				nls.builtins.formatting.prettierd,
				nls.builtins.diagnostics.credo.with({
					diagnostics_format = "[credo] #{m}\n(#{c})",
				}),
				nls.builtins.formatting.mix,
			}
		end,
	},
}
