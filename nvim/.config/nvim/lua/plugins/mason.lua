local Mason = {
  "mason-org/mason.nvim",
  opts = {},
}

local MLspConfig = {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "lua_ls",
      "clangd",
      "pyright",
    }
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  }
}

local lspConfig = {
  "neovim/nvim-lspconfig",
  opts = {}
}

return MLspConfig
