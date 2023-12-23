local keymap = vim.keymap

local config = function()
	local telescope = require("telescope")
 	local project_actions = require("telescope._extensions.project.actions")

	telescope.setup({
		defaults = {
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
				},
			},
		},
		pickers = {
			buffers = {
				theme = "dropdown",
				previewer = false,
			},
		},
		extensions = {
			project = {
				base_dirs = {
					"~/projects",
				},
				hidden_files = false,
				theme = "dropdown",
				order_by = "recent",
				search_by = "title",
        on_project_selected = function(prompt_bufnr)
          project_actions.change_working_directory(prompt_bufnr)
          vim.cmd("%bw!")
          vim.cmd("edit .")
        end,
			},
		},
	})
	telescope.load_extension("project")
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.3",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-project.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = config,
	keys = {
		keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>"),
		keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>"),
		keymap.set("n", "<leader>ff", ":Telescope find_files<CR>"),
		keymap.set("n", "<leader>fa", ":Telescope <CR>"),
		keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>"),
		keymap.set("n", "<leader>fb", ":Telescope buffers<CR>"),
	},
}
