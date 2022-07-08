-- Options for stting keymaps
local opts = {
    -- noremap = true,     -- Default as of 0.7
    silent = true,
}

-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<leader>wh", "<C-w>h", opts)
keymap("n", "<leader>wj", "<C-w>j", opts)
keymap("n", "<leader>wk", "<C-w>k", opts)
keymap("n", "<leader>wl", "<C-w>l", opts)
-- Splits
keymap("n", "<leader>ws", ":split<CR>", opts)
keymap("n", "<leader>wv", ":vsplit<CR>", opts)

-- Show files if using nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>r", ":NvimTreeRefresh<CR>", opts)
keymap("n", "<leader>n", ":NvimTreeFindFile<CR>", opts)

-- if not using nvim-tree
--keymap("n", "<leader>e", ":Lex 30<cr>", opts)
--keymap("n", "<leader>t", ":Tex <cr>", opts)

-- Telescope
keymap(
    "n",
    "<leader>f",
    "<cmd>lua require('telescope.builtin').find_files()<cr>",
    opts
)
keymap(
    "n",
    "<leader>b",
    "<cmd>lua require('telescope.builtin').buffers()<cr>",
    opts
)

-- Resize windows with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- More logical pasting in visual mode
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Budget autopairs
--vim.cmd([[inoremap " ""<left>]])
--vim.cmd([[inoremap ' ''<left>]])
--vim.cmd([[inoremap ( ()<left>]])
--vim.cmd([[inoremap [ []<left>]])
--vim.cmd([[inoremap { {}<left>]])
