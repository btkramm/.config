vim.cmd('set termguicolors')

require('onedark').setup({
  style = 'darker',
  transparent = false,
  highlights = {
    NvimTreeRootFolder = { fg = '$light_grey' },
  },
})
require('onedark').load()
