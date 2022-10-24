local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.init_lsp_saga {
  server_filetype_map = {
    typescript = 'typescript'
  },
  finder_action_keys = {
    open = '<CR>',
    quit = '<ESC>'
  },
  rename_action_quit = '<ESC>'
}

-- Lsp finder find the symbol definition implementation reference
vim.keymap.set('n', 'gh', '<Cmd>Lspsaga lsp_finder<CR>', { silent = true, noremap = true })

-- Code action
vim.keymap.set({ 'n', 'v' }, '<Leader>ca', '<cmd>Lspsaga code_action<CR>', { silent = true, noremap = true })

-- Rename with selector
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', { silent = true, noremap = true })

-- Only jump to error
vim.keymap.set("n", "[E", function()
  require('lspsaga.diagnostic').goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })

vim.keymap.set("n", "]E", function()
  require('lspsaga.diagnostic').goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
