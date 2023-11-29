local M = {}

function M.config()
  require('nvim-treesitter.configs').setup({
    ensure_installed = 'maintained',
    sync_install = false,

    autopairs = {
      enable = true,
    },
    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  })
end

return M
