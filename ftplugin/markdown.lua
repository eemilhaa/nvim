-- Options for setting keymaps
local opts = { noremap = true, silent = true }
-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Navigate wrapped lines like you would normal lines
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)
keymap("n", "0", "g0", opts)
keymap("n", "$", "g$", opts)
keymap("n", "I", "gI", opts)
keymap("n", "A", "g$a", opts)
-- Same for visual mode
keymap("v", "j", "gj", opts)
keymap("v", "k", "gk", opts)

-- Wrap and break lines on spaces
vim.opt.wrap = true
vim.opt.linebreak = true
