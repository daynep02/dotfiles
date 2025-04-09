return {
  "nvim-tree/nvim-tree.lua",
  opts = {},
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    vim.keymap.set('n', '<leader>n', ":NvimTreeToggle<CR>")
    require("nvim-tree").setup{}
  end
}
