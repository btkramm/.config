local isNotExplorer = function()
  local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ':.')

  return filename ~= 'NvimTree_1'
end

require('lualine').setup({
  sections = {
    lualine_a = {},
    lualine_b = {
      'branch',
      { 'diff', cond = isNotExplorer },
      { 'diagnostics', cond = isNotExplorer },
    },
    lualine_c = {
      { 'filename', cond = isNotExplorer },
    },
    lualine_x = {
      { 'filetype', cond = isNotExplorer },
    },
    lualine_y = {
      { 'location', cond = isNotExplorer },
    },
    lualine_z = { '' },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
      { 'filename', cond = isNotExplorer },
    },
    lualine_x = {
      { 'location', cond = isNotExplorer },
    },
    lualine_y = {},
    lualine_z = {},
  },
  options = {
    component_separators = '',
    section_separators = '',
  },
})
