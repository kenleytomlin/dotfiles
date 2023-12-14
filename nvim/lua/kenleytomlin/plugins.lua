local status, packer = pcall(require, 'packer')

if (not status) then
  print('Packer is not installed')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use { 'svrana/neosolarized.nvim', requires = { 'tjdevries/colorbuddy.nvim' } } -- Solarized colors
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }                           -- Status line
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'onsails/lspkind-nvim'  -- vscode like pictograms
  use 'norcalli/nvim-colorizer.lua'
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use { 'nvim-telescope/telescope-file-browser.nvim' }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  }
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'nvimtools/none-ls.nvim'
  use {
    'nvimdev/lspsaga.nvim',
    after = 'nvim-lspconfig',
  }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'neovim/nvim-lspconfig' -- LSP
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'      -- Completion
  use 'hrsh7th/cmp-nvim-lsp'

  use 'L3MON4D3/LuaSnip'          -- luasnip completion

  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client

  use 'folke/tokyonight.nvim'
  use 'tpope/vim-surround'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
end)
