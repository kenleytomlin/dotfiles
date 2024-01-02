local function telescope_buffer_dir()
	return vim.fn.expand("%:p:h")
end

return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		tag = "0.1.5",
		opts = {
			defaults = {
				mappings = {
					n = {
						["q"] = function()
							require("telescope.actions").close()
						end,
					},
				},
			},
			extensions = {
				file_browser = { theme = "dropdown", hijack_netrw = true },
			},
		},
		keys = function()
			return {
				{
					"ff",
					function()
						require("telescope.builtin").find_files({})
					end,
					desc = "Find files",
				},
				{
					"fg",
					function()
						require("telescope.builtin").live_grep({})
					end,
					desc = "Grep for files",
				},
				{
					"fb",
					function()
						local telescope = require("telescope")
						telescope.extensions.file_browser.file_browser({
							path = "%:p:h",
							cwd = telescope_buffer_dir(),
							respect_gitignore = false,
							hidden = true,
							grouped = true,
							previewer = false,
							initial_mode = "normal",
							layout_config = { height = 20 },
						})
					end,
					desc = "File browser",
				},
			}
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
		},
	},
}
