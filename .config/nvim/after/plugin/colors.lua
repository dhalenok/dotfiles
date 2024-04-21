require("catppuccin").setup({
	transparent_background = true,
	integrations = {
		cmp = true,
		gitsigns = true,
		treesitter = true,
		which_key = true,
		ufo = true,
		navic = { enabled = true },
	},
})

vim.cmd.colorscheme("catppuccin")
