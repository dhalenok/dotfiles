local util = require("conform.util")
local fs = require("conform.fs")

return {
  {
    "stevearc/conform.nvim",
    opts = {
      log_level = vim.log.levels.DEBUG,
      formatters_by_ft = {
        python = function(bufnr)
          if require("conform").get_formatter_info("ruff_format", bufnr).available then
            return { "ruff_fix", "ruff_format" }
          else
            return { "isort", "black" }
          end
        end,
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
        less = { "prettier" },
        json = { "prettier" },
        html = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        ["*"] = { "trim_whitespace" },
      },
      formatters = {
        injected = { options = { ignore_errors = true } },
        prettier = {
          command = function(self, bufnr)
            local cmd = util.find_executable({ ".yarn/sdks/prettier/bin/prettier.cjs" }, "")(self, bufnr)
            if cmd ~= "" then
              return cmd
            end
            -- return type of util.from_node_modules is fun(self: conform.FormatterConfig, ctx: conform.Context): string
            ---@diagnostic disable-next-line
            return util.from_node_modules(fs.is_windows and "prettier.cmd" or "prettier")(self, bufnr)
          end,
        },
      },
    },
  },
}
