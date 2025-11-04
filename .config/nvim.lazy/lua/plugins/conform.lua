return {
  {
    "stevearc/conform.nvim",
    ---@type conform.setupOpts
    opts = {
      formatters_by_ft = {
        python = function(bufnr)
          if require("conform").get_formatter_info("ruff_format", bufnr).available then
            return { "ruff_fix", "ruff_format" }
          else
            return { "isort", "black" }
          end
        end,
        ["*"] = { "trim_whitespace" },
      },
    },
  },
}
