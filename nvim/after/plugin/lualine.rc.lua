local status, lualine = pcall(require, 'lualine')

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    disabled_filetypes = {}
  },
  extensions = { 'fugitive' }
}

