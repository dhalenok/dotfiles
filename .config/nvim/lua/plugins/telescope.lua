return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Search for a file" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Search for a string" })
		vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Search open buffers" })
		vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Search for a file in Git" })
	end,
}
