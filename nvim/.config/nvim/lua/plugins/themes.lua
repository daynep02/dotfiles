return {
  {
    "catppuccin/nvim", name = "catppuccin", priority = 100, 
    opts = {
      transparent_background = true,
      show_end_of_buffer = true
    }
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
	    config = function ()require("lualine").setup {
	      --options = { theme = "pywal-nvim" }
	    }
	end
  }
}
