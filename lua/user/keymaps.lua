local keymap = require('user.functions').keymap
local opts = require('user.functions').keymap_opts

--Remap space as leader key
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Modes
-- normal_mode = 'n',
-- insert_mode = 'i',
-- visual_mode = 'v',
-- visual_block_mode = 'x',
-- term_mode = 't',
-- command_mode = 'c',

-- Normal --
-- Better window navigation
keymap('n', '<leader>wh', '<C-w>h', opts)
keymap('n', '<leader>wj', '<C-w>j', opts)
keymap('n', '<leader>wk', '<C-w>k', opts)
keymap('n', '<leader>wl', '<C-w>l', opts)
-- Splits
keymap('n', '<leader>ws', ':split<CR>', opts)
keymap('n', '<leader>wv', ':vsplit<CR>', opts)

-- Resize windows with arrows
keymap('n', '<C-Up>', ':resize +2<CR>', opts)
keymap('n', '<C-Down>', ':resize -2<CR>', opts)
keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Visual --
-- Stay in indent mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- More logical pasting in visual mode
keymap('v', 'p', '"_dP', opts)

-- EXTRAS
-- if not using nvim-tree
--keymap('n', '<leader>e', ':Lex 30<cr>', opts)
--keymap('n', '<leader>t', ':Tex <cr>', opts)

-- Budget autopairs
--vim.cmd([[inoremap ' ''<left>]])
--vim.cmd([[inoremap ' ''<left>]])
--vim.cmd([[inoremap " ""<left>]])
--vim.cmd([[inoremap " ""<left>]])
--vim.cmd([[inoremap ( ()<left>]])
--vim.cmd([[inoremap [ []<left>]])
--vim.cmd([[inoremap { {}<left>]])
