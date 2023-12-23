local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Pane and Window Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) --Navigate Left
keymap.set("n", "<C-j>", "<C-w>j", opts) --Navigate Down
keymap.set("n", "<C-k>", "<C-w>k", opts) --Navigate Up
keymap.set("n", "<C-l>", "<C-w>l", opts) --Navigate Right
keymap.set("t", "<C-h>", "[[<Cmd>wincmd h<CR>]]", opts) -- Navigate Left
keymap.set("t", "<C-j>", "[[<Cmd>wincmd j<CR>]]", opts) -- Navigate Left
keymap.set("t", "<C-k>", "[[<Cmd>wincmd k<CR>]]", opts) -- Navigate Left
keymap.set("t", "<C-l>", "[[<Cmd>wincmd l<CR>]]", opts) -- Navigate Left
keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts) -- Navigate Left
keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", opts) -- Navigate Left
keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", opts) -- Navigate Left
keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", opts) -- Navigate Left
--
-- Windows Navigation
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Horizontally
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Toggle Minimize

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false })

-- Terminal
vim.api.nvim_set_keymap("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>", { noremap = true })

-- Alpha
vim.api.nvim_set_keymap("n", "<leader>aa", "<cmd>Alpha<cr>", { noremap = true })

-- Scroll buffers
vim.api.nvim_set_keymap("n", "<S-l>", ":bnext<CR>", opts)
vim.api.nvim_set_keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Resize with arrows
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize +2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize -2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Disable yanking for "x" in normal mode
vim.api.nvim_set_keymap("n", "x", '"_x', { noremap = true, silent = true })

-- Disable yanking for "x" in visual mode
vim.api.nvim_set_keymap("x", "x", '"_x', { noremap = true, silent = true })
