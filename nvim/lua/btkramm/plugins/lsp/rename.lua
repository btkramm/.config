local function rename(win)
  local new_name = vim.trim(vim.fn.getline('.'))

  vim.api.nvim_win_close(win, true)
  vim.lsp.buf.rename(new_name)
end

local function open_float()
  local options = {
    relative = 'cursor',
    row = 0,
    col = 0,
    width = 30,
    height = 1,
    style = 'minimal',
    border = 'single',
  }

  local buf = vim.api.nvim_create_buf(false, true)
  local win = vim.api.nvim_open_win(buf, true, options)
  local fmt = '<CMD>lua Rename.rename(%d)<CR>'

  vim.api.nvim_buf_set_keymap(buf, 'i', '<leader>rn', '<NOP>', { silent = true })

  -- string.format toma el primer argumento y va reemplazando. es una forma de pasar win a la función.
  -- pero estoy pasando win como string? no es un objeto?
  vim.api.nvim_buf_set_keymap(buf, 'i', '<CR>', string.format(fmt, win), { silent = true })
  vim.api.nvim_command('startinsert')
end

_G.Rename = {
  rename = rename,
  open_float = open_float,
}

vim.api.nvim_set_keymap('n', '<leader>rn', '<CMD>lua Rename.open_float()<CR>', { silent = true })
