local keymap = vim.keymap

-- upper/lower word
keymap.set('n', '<Leader>u', 'mQviwU`Q')
keymap.set('n','<Leader>', 'lmQviwu`Q')

-- upper/lower first char of word
keymap.set('n', '<Leader>U', 'mQgewvU`Q')
keymap.set('n', '<Leader>L', 'mQgewvu`Q')

-- find merge conflict markers
keymap.set('n','<Leader>fc', '<ESC>/\v^[<=>]{7}( .*\\|$)<CR>', { silent = true })

-- Map the arrow keys o be based on display lines, not physical lines
keymap.set('', '<Down>', 'gj')
keymap.set('', '<Up>', 'gk')

-- Move around splits using Ctrl + {h, j, k, l}
keymap.set('n', '<C-h>', '<C-w>h', { silent = true })
keymap.set('n', '<C-j>', '<C-w>j', { silent = true })
keymap.set('n', '<C-k>', '<C-w>k', { silent = true })
keymap.set('n', '<C-l>', '<C-w>l', { silent = true })

-- Move highlighted blocks in visual mode
keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv")
keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv")

-- Reload neovim config
keymap.set('', '<Leader>sv', ':source $MYVIMRC<CR>', { remap = false })
