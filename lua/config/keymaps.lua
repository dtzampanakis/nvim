local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) --Navigate Left
keymap.set("n", "<C-j>", "<C-w>j", opts) --Navigate Down
keymap.set("n", "<C-k>", "<C-w>k", opts) --Navigate Up
keymap.set("n", "<C-l>", "<C-w>l", opts) --Navigate Right

-- vim.api.nvim_set_keymap("n", "<S-h>", ":bp<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<S-l>", ":bn<CR>", { noremap = true, silent = true })

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

-- Scroll buffers
vim.api.nvim_set_keymap("n", "<S-l>", ":bnext<CR>", opts)
vim.api.nvim_set_keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Resize with arrows
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize +2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize -2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)
