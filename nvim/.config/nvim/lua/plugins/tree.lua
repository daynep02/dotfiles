return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons", },
  opts = {},
  keys = {
    {
      "<leader>n", "<cmd>NvimTreeToggle<cr>", desc = "NvimTree",
    }
  }

}
