local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup({
    ensure_installed = "all", -- Install all parsers
    ignore_install = { "" }, -- List of parsers to ignore installing
    highlight = {
        enable = true, -- Enable tree-sitter highlighting
        disable = { "css" }, -- List of languages to disable highlighting
    },
    autopairs = {
        enable = true, -- Enable autopairs
    },
    indent = {
        enable = true, -- Enable tree-sitter indentation
        disable = { "python", "css" }, -- List of languages to disable indentation
    },
    indent = { enable = true },
    indent = { enable = { "yaml" } }, -- Enable indentation for YAML
})

-- Define file types for specific extensions
vim.api.nvim_exec([[
    autocmd BufNewFile,BufRead *.j2 setfiletype jinja.html
    autocmd BufNewFile,BufRead *.sls setfiletype sls |set syntax=jinja.html

]], false)

