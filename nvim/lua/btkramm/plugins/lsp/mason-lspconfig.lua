require('mason').setup()
require('mason-lspconfig').setup({
  automatic_installation = true,
})

require('lspconfig').lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
    },
  },
})

require('lspconfig').tsserver.setup({})
