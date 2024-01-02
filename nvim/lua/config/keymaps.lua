local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- upper/lower word
keymap.set("n", "<Leader>u", "mQviwU`Q", { desc = "Uppercase word" })
keymap.set("n", "<Leader>l", "lmQviwu`Q", { desc = "Lowercase word" })

-- upper/lower first char of word
keymap.set("n", "<Leader>U", "mQgewvU`Q", { desc = "Uppercase first char of word" })
keymap.set("n", "<Leader>L", "mQgewvu`Q", { desc = "Lowercase first char of word" })

-- Map the arrow keys to be based on display lines, not physical lines
keymap.set("", "<Down>", "gj")
keymap.set("", "<Up>", "gk")

-- Move around splits using Ctrl + {h, j, k, l}
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Move highlighted blocks in visual mode
keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")
