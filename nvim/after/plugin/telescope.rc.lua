local status, telescope = pcall(require, 'telescope')
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

local fb_actions = require"telescope".extensions.file_browser.actions

local function telescope_buffer_dir() return vim.fn.expand('%:p:h') end

telescope.setup {
    defaults = {mappings = {n = {["q"] = actions.close}}},
    extensions = {file_browser = {theme = "dropdown", hijack_netrw = true}}
}

telescope.load_extension('file_browser')
telescope.load_extension('fzf')

vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', function()
    telescope.extensions.file_browser.file_browser({
        path = "%:p:h",
        cwd = telescope_buffer_dir(),
        respect_gitignore = false,
        hidden = true,
        grouped = true,
        previewer = false,
        initial_mode = "normal",
        layout_config = {height = 40}
    })
end)
