local keymap = require('user.functions').keymap
local opts = require('user.functions').keymap_opts

-- navigate wrapped lines like you would normal lines
keymap('n', 'j', 'gj', opts)
keymap('n', 'k', 'gk', opts)
keymap('n', '0', 'g0', opts)
keymap('n', '$', 'g$', opts)
keymap('n', 'I', 'g0i', opts)
keymap('n', 'A', 'g$a', opts)
-- same for visual mode
keymap('v', 'j', 'gj', opts)
keymap('v', 'k', 'gk', opts)
keymap('v', '0', 'g0', opts)
keymap('v', '$', 'g$', opts)
-- very budget visual line
--keymap('n', 'V', 'g0vg$', opts)

-- wrap and break lines on spaces
vim.opt.wrap = true
vim.opt.linebreak = true

-- indents
vim.opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2                             -- insert spaces for a tab
