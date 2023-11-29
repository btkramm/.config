local keymap = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

keymap('n', 'gD', '<CMD>lua vim.lsp.buf.declaration()<CR>', options)
keymap('n', 'gd', '<CMD>lua vim.lsp.buf.definition()<CR>', options)
keymap('n', 'gf', '<CMD>lua vim.diagnostic.open_float()<CR>', options)
keymap('n', 'gh', '<CMD>lua vim.lsp.buf.hover()<CR>', options)
keymap('n', 'gi', '<CMD>lua vim.lsp.buf.implementation()<CR>', options)
keymap('n', 'gr', '<CMD>lua vim.lsp.buf.references()<CR>', options)
