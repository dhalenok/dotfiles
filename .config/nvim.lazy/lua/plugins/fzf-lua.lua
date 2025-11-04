return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-mini/mini.icons" },
  opts = { "telescope" },
  keys = {
    { "<leader>ff", LazyVim.pick("files", { root = false }), desc = "Find Files (Root Dir)" },
    { "<leader>fg", LazyVim.pick("live_grep", { root = false, hidden = true }), desc = "Grep (Root Dir)" },
    { "<c-P>", "<cmd>FzfLua git_files<cr>", desc = "Find Files (git-files)" },
    { "<leader>b", "<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
    { "<leader>gs", false },
  },
}
