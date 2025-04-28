return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require("harpoon").setup({
      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
      }
    })
  end,
  keys = {
    {"<leader>m", "<cmd>lua require(\"harpoon.mark\").add_file()<CR>", desc = "Mark file for harpoon"},
    {"<leader>h",  "<cmd>lua require(\"harpoon.ui\").toggle_quick_menu()<CR>", desc = "Open Harpoon ui"},
  }
}
