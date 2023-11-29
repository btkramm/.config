local keymap = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

-- Leader

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

keymap('', '<Space>', '<Nop>', options)

-- Buffers

keymap('n', '[b', '<CMD>bprevious<CR>', options)
keymap('n', ']b', '<CMD>bnext<CR>', options)

-- Copying & Pasting

keymap('n', '<leader>p', '"+p', options)
keymap('n', '<leader>y', '"+y', options)

keymap('x', '<leader>p', '"+p', options)
keymap('x', '<leader>y', '"+y', options)

-- Indentation

keymap('v', '<', '<gv', options)
keymap('v', '>', '>gv', options)

-- LSP

keymap('n', 'gD', '<CMD>lua vim.lsp.buf.declaration()<CR>', options)
keymap('n', 'gd', '<CMD>lua vim.lsp.buf.definition()<CR>', options)
keymap('n', 'gh', '<CMD>lua vim.lsp.buf.hover()<CR>', options)
keymap('n', 'gi', '<CMD>lua vim.lsp.buf.implementation()<CR>', options)
keymap('n', 'gr', '<CMD>lua vim.lsp.buf.references()<CR>', options)

keymap('n', 'gf', '<CMD>lua vim.diagnostic.open_float()<CR>', options)

-- NvimTree

keymap('n', '<D-S-e>', ':NvimTreeFindFile<CR>', options)
keymap('n', '<D-e>', ':NvimTreeToggle<CR>', options)

-- Telescope

keymap('n', '<D-b>', ':Telescope buffers<CR>', options)
keymap('n', '<D-g>', ':Telescope live_grep<CR>', options)
keymap('n', '<D-p>', ':Telescope find_files<CR>', options)

-- Windows

keymap('n', '<C-h>', '<C-w>h', options)
keymap('n', '<C-j>', '<C-w>j', options)
keymap('n', '<C-k>', '<C-w>k', options)
keymap('n', '<C-l>', '<C-w>l', options)

keymap('n', '<leader>h', ':vertical resize -4<CR>', options)
keymap('n', '<leader>j', ':resize +4<CR>', options)
keymap('n', '<leader>k', ':resize -4<CR>', options)
keymap('n', '<leader>l', ':vertical resize +4<CR>', options)
