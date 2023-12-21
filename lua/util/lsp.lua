local keymap = vim.keymap

local M = {}

-- Set Keymaps on the active lsp server
M.on_attach = function(client,bufnr)
		local opts = { noremap = true, silent = true, buffer = bufnr }

		-- Set Keybinds
		keymap.set("n", "<leader>gD", "<cmd>Lspsaga goto_definition<CR>", opts)
		keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
		keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
		keymap.set("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
		keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
		keymap.set("n", "<leader>pd", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
		keymap.set("n", "<leader>nd", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
		keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)

  if client.name == "pyright" then
		keymap.set("n", "<leader>oi", "<cmd>PyrightOrganizeImports<CR>", opts)
  end
end

return M
