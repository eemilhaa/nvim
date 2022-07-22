local keymap = require('user.functions').keymap
local opts = require('user.functions').keymap_opts

require('telescope').setup{
    pickers = {
        find_files = {
            hidden = true,
        }
    },
}

keymap(
    'n',
    '<leader>ff',
    '<cmd>lua require("telescope.builtin").find_files()<cr>',
    opts
)
keymap(
    'n',
    '<leader>fb',
    '<cmd>lua require("telescope.builtin").buffers()<cr>',
    opts
)
keymap(
    'n',
    '<leader>fg',
    '<cmd>lua require("telescope.builtin").git_commits()<cr>',
    opts
)
keymap(
    'n',
    '<leader>fs',
    '<cmd>Telescope treesitter<cr>',
    opts
)
