return {
  'navarasu/onedark.nvim',
  config = function()
    vim.cmd('set termguicolors')

    local onedark = require('onedark')

    onedark.setup({
      style = 'darker',
      highlights = {
        NvimTreeRootFolder = { fg = '$light_grey' },
      },
    })

    onedark.load()
  end,
}
