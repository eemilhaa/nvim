local keymap = require('user.functions').keymap
local opts = require('user.functions').keymap_opts

require('nvim-tree').setup { }

keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
keymap('n', '<leader>r', ':NvimTreeRefresh<CR>', opts)
keymap('n', '<leader>n', ':NvimTreeFindFile<CR>', opts)

