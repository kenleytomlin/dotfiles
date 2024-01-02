-- Open the file browser when opening vim
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		require("telescope").extensions.file_browser.file_browser()
	end,
})
