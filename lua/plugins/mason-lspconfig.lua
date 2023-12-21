local opts = {
	ensure_installed = {
		"efm",
		"bashls",
		"pyright",
		"html",
		"cssls",
		"jsonls",
		"terraformls",
		"salt_ls",
		"lua_ls",
	},

	automatic_installation = true,
}

return {
	"williamboman/mason-lspconfig.nvim",
	opts = opts,
	event = "BufReadPre",
	dependencies = "williamboman/mason.nvim",
}
