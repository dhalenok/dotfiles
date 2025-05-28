return {
	"ibhagwan/fzf-lua",
	dependencies = { "echasnovski/mini.icons" },
	opts = { "telescope" },
	keys = {
		{
			"<leader>ff",
			function()
				require("fzf-lua").files()
			end,
			desc = "Search for a file",
		},
		{
			"<leader>fg",
			function()
				require("fzf-lua").live_grep()
			end,
			desc = "Search for a string",
		},
		{
			"<leader>b",
			function()
				require("fzf-lua").buffers()
			end,
			desc = "Search open buffers",
		},
	},
}
