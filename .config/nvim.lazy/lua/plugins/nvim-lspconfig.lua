return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ["*"] = {
        keys = {
          { "<leader>vrr", "<cmd>lua vim.lsp.buf.references()<cr>", desc = "References" },
          { "<leader>vrn", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },
          { "<leader>vca", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
        },
      },
    },
  },
}
