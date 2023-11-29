require('btkramm.plugins.lsp.mason-lspconfig')
require('btkramm.plugins.lsp.keymaps')
require('btkramm.plugins.lsp.rename')

vim.diagnostic.config({
  float = {
    border = 'rounded',
    focusable = true,
    header = '',
    source = 'always',
  },
  virtual_text = false,
})

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = 'rounded' })
vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = 'rounded' })
