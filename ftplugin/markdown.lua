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
keymap("v", "0", "g0", opts)
keymap("v", "$", "g$", opts)

-- Wrap and break lines on spaces
vim.o.wrap = true
vim.o.linebreak = true

-- Nice for nesting lists
vim.o.shiftwidth = 2                          -- the number of spaces inserted for each indentation
vim.o.tabstop = 2                             -- insert spaces for a tab
