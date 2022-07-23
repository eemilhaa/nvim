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
    '<leader>f',
    '<cmd>lua require("telescope.builtin").find_files()<cr>',
    opts
)
keymap(
    'n',
    '<leader>b',
    '<cmd>lua require("telescope.builtin").buffers()<cr>',
    opts
)
keymap(
    'n',
    '<leader>g',
    '<cmd>lua require("telescope.builtin").git_commits()<cr>',
    opts
)
keymap(
    'n',
    '<leader>s',
    '<cmd>Telescope treesitter<cr>',
    opts
)
