vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true
vim.g.ruler = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.wrap = false
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.expandtab = true
vim.opt.shell = 'zsh'

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.list = true
vim.opt.listchars = {
  tab = '  ',
  trail = '.',
  extends = '>',
  precedes = '<',
}

vim.opt.wildignore:append {
  '*/node_modules/*',
  '*.o',
  '*.out',
  '.git',
  '*.rbc',
  '*.rbo',
  '*.class',
  '.svn',
  '*.gem',
  '*.zip',
  '*.swp'
}

vim.g.mapleader = ','

