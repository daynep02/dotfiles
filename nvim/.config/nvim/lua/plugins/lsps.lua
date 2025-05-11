return {
  {
    "neovim/nvim-lspconfig",
    opts = {},
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require('lspconfig')
      require("mason").setup(
        { log_level = vim.log.levels.DEBUG }
      )
      require("mason-lspconfig").setup()
      require("mason-lspconfig").setup_handlers {
        function(server_name)
          lspconfig[server_name].setup { capabilities = capabilities }
        end
      }

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
