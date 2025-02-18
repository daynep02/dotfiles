return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup{
      auto_install = true,
      highlight = {enable = true },
      indent = { enable = true }, 
    }
  end,
  opts = {
    ensure_installed  = { "c", "c++", "v", "typescript", "lua", "java" }
  }
}
