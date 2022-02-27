
-- Options for stting keymaps
local opts = { noremap = true, silent = true }

-- Terminal-specific opts
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Virtual line navigation
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)
keymap("n", "0", "g0", opts)
keymap("n", "$", "g$", opts)
keymap("n", "I", "gI", opts)
keymap("n", "A", "g$a", opts)

vim.opt.wrap = true
vim.opt.linebreak = true
