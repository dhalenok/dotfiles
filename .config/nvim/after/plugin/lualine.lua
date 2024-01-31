require("lualine").setup({
	tabline = {
		lualine_a = {
			{
				"buffers",
				max_length = vim.o.columns,
			},
		},
	},
})
