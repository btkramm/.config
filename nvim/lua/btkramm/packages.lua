local fn = vim.fn
local path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    path,
  })

  vim.cmd([[packadd packer.nvim]])
end

local packer = require('packer')

return packer.startup(function(use)
  use({ 'wbthomason/packer.nvim' })

  use({ 'nvim-lua/plenary.nvim' })

  use({ 'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim', 'neovim/nvim-lspconfig' }) -- LSP
  use({ 'hrsh7th/nvim-cmp', 'L3MON4D3/LuaSnip' }) -- CMP
  use({ 'hrsh7th/cmp-nvim-lsp' }) -- LSP + CMP

  use({ 'RRethy/vim-illuminate' })
  use({ 'akinsho/bufferline.nvim' })
  use({ 'kyazdani42/nvim-tree.lua' })
  use({ 'kylechui/nvim-surround' })
  use({ 'lewis6991/gitsigns.nvim' })
  use({ 'mfussenegger/nvim-lint' })
  use({ 'navarasu/onedark.nvim' }) -- Colorscheme
  use({ 'numToStr/Comment.nvim', 'JoosepAlviste/nvim-ts-context-commentstring' }) -- Comment
  use({ 'nvim-lualine/lualine.nvim' })
  use({ 'nvim-telescope/telescope.nvim' })
  use({ 'nvim-treesitter/nvim-treesitter', commit = '63260da18bf273c76b8e2ea0db84eb901cab49ce' })
  use({ 'stevearc/conform.nvim' })
  use({ 'tpope/vim-fugitive' })
  use({ 'windwp/nvim-autopairs' })

  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
