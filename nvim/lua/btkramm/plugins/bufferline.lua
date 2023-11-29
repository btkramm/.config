local bufferline = require('bufferline')

bufferline.setup({
  options = {
    style_preset = {
      bufferline.style_preset.minimal,
      bufferline.style_preset.no_bold,
      bufferline.style_preset.no_italic,
    },
  },
})
