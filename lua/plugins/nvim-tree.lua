return{
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  config = function()
    vim.cmd([[hi NvimTreeNormal ctermbg=0 guibg=NONE ]])
    require("nvim-tree").setup({
      filters = {
        dotfiles = false,
      },
    })
  end,
}

