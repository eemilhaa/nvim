local keymap = require('user.functions').keymap
local opts = require('user.functions').keymap_opts


local config = {
    virtual_text = false,
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = {
        focusable = false,
        style = 'minimal',
        --border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
    },
}

vim.diagnostic.config(config)

-- https://github.com/neovim/nvim-lspconfig#suggested-configuration
-- cmp synergy: https://github.com/neovim/nvim-lspconfig/wiki/Snippets
-- LSP KEYMAPS
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
keymap('n', '<leader>l', vim.diagnostic.open_float, opts)
keymap('n', '[d', vim.diagnostic.goto_prev, opts)
keymap('n', ']d', vim.diagnostic.goto_next, opts)
keymap('n', '<leader>q', vim.diagnostic.setloclist, opts)
