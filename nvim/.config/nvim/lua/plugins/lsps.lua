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
        "clang-format",
        "lua_ls",
        "vls",
        "java-language-server",
        "codelldb",
        "gopls",
        "cmake",
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
      require("mason").setup()
      require("mason-lspconfig").setup()
      require("mason-lspconfig").setup_handlers {
        function(server_name)
          lspconfig[server_name].setup{ capabilities = capabilities}
        end
      }

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
      vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = true
    }
)
    end
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true
  }
}
