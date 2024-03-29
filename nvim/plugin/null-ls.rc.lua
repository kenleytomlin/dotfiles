local status, null_ls = pcall(require, "none-ls")
if not status then
	return
end

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.lua_format,
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.diagnostics.eslint_d.with({
			diagnostics_format = "[eslint] #{m}\n(#{c})",
		}),
		null_ls.builtins.formatting.prettierd,
		null_ls.builtins.diagnostics.credo.with({
			diagnostics_format = "[credo] #{m}\n(#{c})",
		}),
		null_ls.builtins.formatting.mix,
	},
})
