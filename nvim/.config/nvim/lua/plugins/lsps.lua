return {
  {
    'nvim-java/nvim-java',
    config = function()
      require('java').setup()
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      esnure_installed = { 
        "clangd",
        "lua_ls",
        "vls",
        "java-language-server"
      }
    }
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    }
  },
  {
    "neovim/nvim-lspconfig",
    opts = { },
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require('lspconfig')
      lspconfig.clangd.setup{capabilities = capabilities}
      lspconfig.pyright.setup{capabilities = capabilities}
      lspconfig.html.setup{capabilities = capabilities}
      lspconfig.ts_ls.setup{capabilities = capabilities}
      lspconfig.lua_ls.setup{capabilities = capabilities}
      lspconfig.vls.setup{capabilities = capabilities}
      lspconfig.java_language_server.setup{capabilities = capabilities}
      lspconfig.jdtls.setup{capabilities = capabilities}

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
    end
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true
  }
}
