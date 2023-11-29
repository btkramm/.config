local keymap = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

-- Leader

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

keymap('', '<Space>', '<Nop>', options)

-- Normal - Explorer

keymap('n', '<D-e>', ':NvimTreeToggle<CR>', options)
keymap('n', '<D-S-e>', ':NvimTreeFindFile<CR>', options)

-- Visual - Indentation

keymap('v', '>', '>gv', options)
keymap('v', '<', '<gv', options)

-- Normal - Telescope

keymap('n', '<D-b>', ':Telescope buffers<CR>', options)
keymap('n', '<D-g>', ':Telescope live_grep<CR>', options)
keymap('n', '<D-p>', ':Telescope find_files<CR>', options)

-- Normal - Window navigation

keymap('n', '<C-h>', '<C-w>h', options)
keymap('n', '<C-j>', '<C-w>j', options)
keymap('n', '<C-k>', '<C-w>k', options)
keymap('n', '<C-l>', '<C-w>l', options)

-- Normal - Window resizing

keymap('n', '<leader>h', ':vertical resize -4<CR>', options)
keymap('n', '<leader>j', ':resize +4<CR>', options)
keymap('n', '<leader>k', ':resize -4<CR>', options)
keymap('n', '<leader>l', ':vertical resize +4<CR>', options)
