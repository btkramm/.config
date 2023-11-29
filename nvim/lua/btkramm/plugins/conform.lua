return {
  'stevearc/conform.nvim',
  config = function()
    local conform = require('conform')

    conform.setup({
      formatters_by_ft = {
        css = { 'prettierd' },
        graphql = { 'prettierd' },
        html = { 'prettierd' },
        javascript = { 'prettierd' },
        javascriptreact = { 'prettierd' },
        json = { 'prettierd' },
        lua = { 'stylua' },
        markdown = { 'prettierd' },
        typescript = { 'prettierd' },
        typescriptreact = { 'prettierd' },
        yaml = { 'prettierd' },
      },
      format_on_save = {
        async = false,
        lsp_fallback = true,
        timeout_ms = 1000,
      },
    })

    -- Keymaps

    vim.keymap.set({ 'n', 'v' }, '<D-f>', function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end)
  end,
}
