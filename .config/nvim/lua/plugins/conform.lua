return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
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
		format_on_save = {
			lsp_fallback = true,
			timeout_ms = 10000,
		},
	},
}
