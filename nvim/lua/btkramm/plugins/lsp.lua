return {
  'williamboman/mason.nvim',
  dependencies = {
    'RRethy/vim-illuminate',
    'neovim/nvim-lspconfig',
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    vim.diagnostic.config({
      float = { border = 'rounded', focusable = true, header = nil, source = 'always' },
      virtual_text = false,
    })

    vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
      border = 'rounded',
    })
    vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, {
      border = 'rounded',
    })

    require('mason').setup()
    require('mason-lspconfig').setup({ automatic_installation = true })

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
  end,
}
