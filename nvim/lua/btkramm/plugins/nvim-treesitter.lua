return {
  'nvim-treesitter/nvim-treesitter',
  commit = '63260da18bf273c76b8e2ea0db84eb901cab49ce',
  config = function()
    require('nvim-treesitter.configs').setup({
      sync_install = false,
      autopairs = {
        enable = true,
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    })
  end,
}
