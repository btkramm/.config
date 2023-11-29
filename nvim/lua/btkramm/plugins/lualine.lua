return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local isNotNvimTreeBuffer = function()
      return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ':.') ~= 'NvimTree_1'
    end

    require('lualine').setup({
      sections = {
        lualine_a = {},
        lualine_b = {
          'branch',
          { 'diff', cond = isNotNvimTreeBuffer },
          { 'diagnostics', cond = isNotNvimTreeBuffer },
        },
        lualine_c = {
          { 'filename', cond = isNotNvimTreeBuffer, path = 1 },
        },
        lualine_x = {
          { 'filetype', cond = isNotNvimTreeBuffer },
        },
        lualine_y = {
          { 'location', cond = isNotNvimTreeBuffer },
        },
        lualine_z = { '' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
          { 'filename', cond = isNotNvimTreeBuffer },
        },
        lualine_x = {
          { 'location', cond = isNotNvimTreeBuffer },
        },
        lualine_y = {},
        lualine_z = {},
      },
      options = {
        component_separators = '',
        section_separators = '',
      },
    })
  end,
}
