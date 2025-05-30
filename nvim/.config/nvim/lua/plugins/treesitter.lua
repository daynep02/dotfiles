return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "cpp", "lua", "python" },
      sync_install = false,
      hgihlight = { enable = true },
      indent = { enable = true },
    })
  end

}
