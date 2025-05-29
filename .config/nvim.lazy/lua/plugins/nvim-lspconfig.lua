return {
  "neovim/nvim-lspconfig",
  opts = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "<leader>vrr", "<cmd>lua vim.lsp.buf.references()<cr>" }
    keys[#keys + 1] = { "<leader>vrn", "<cmd>lua vim.lsp.buf.rename()<cr>" }
    keys[#keys + 1] = { "<leader>vca", "<cmd>lua vim.lsp.buf.code_action()<cr>" }
  end,
}
