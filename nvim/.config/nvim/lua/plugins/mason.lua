return {
  {
    "mason-org/mason.nvim",
    version = "^1.0.0",
    opts = {
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    version = "^1.0.0",
    opts = {
      auto_install = true,
      ensure_installed = {
        "clangd",
        "hls",
        "lua_ls",
        "vls",
        "gopls",
        "cmake",
      },
    },
  }
}
