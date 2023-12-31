local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

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
keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
-- keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
-- keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- My
keymap("v", "<C-c>", '"+y', opts)
keymap("i", "<C-v>", "<C-r>*", opts)
keymap("n", "<C-z>", "zMzvzz", opts)

keymap("n", "<C-k>", ":bnext<CR>", opts)
keymap("n", "<C-j>", ":bprevious<CR>", opts)

keymap("n", "<S-h>", "^", opts)
keymap("n", "<S-l>", "$", opts)

keymap("n", "g<C-o>", "o<ESC>k", opts)
keymap("n", "gO", "O<ESC>j", opts)


keymap("n", "<C-f>", ":Telescope aerial<CR>", opts)
keymap("n", "<C-b>", ":Telescope current_buffer_fuzzy_find<CR>", opts)

-- yode.nvim
-- keymap("v", "g<C-f>", ":YodeCreateSeditorFloating<CR>", {noremap = true})
-- keymap("n", "g<C-d>", ":YodeBufferDelete<CR>", {noremap = true})


-- dial.nvim
-- keymap("n", "<C-a>", require("dial.map").inc_normal(), opts)
-- keymap("n", "<C-x>", require("dial.map").dec_normal(), opts)



-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
-- keymap("v", "<A-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

