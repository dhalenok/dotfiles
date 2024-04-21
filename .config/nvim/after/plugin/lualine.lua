vim.g.gitblame_display_virtual_text = 0
local git_blame = require("gitblame")

require("lualine").setup({
	tabline = {
		lualine_a = {
			{
				"buffers",
				max_length = vim.o.columns,
			},
		},
	},
	winbar = {
		lualine_a = { "branch" },
		lualine_b = { { "filename", path = 1 } },
		lualine_c = { { "navic", color_correction = "static" } },
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename", { git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available } },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
})

vim.keymap.set("n", "<leader>1", "<CMD>LualineBuffersJump! 1<CR>", { desc = "Switch to buffer 1" })
vim.keymap.set("n", "<leader>2", "<CMD>LualineBuffersJump! 2<CR>", { desc = "Switch to buffer 2" })
vim.keymap.set("n", "<leader>3", "<CMD>LualineBuffersJump! 3<CR>", { desc = "Switch to buffer 3" })
vim.keymap.set("n", "<leader>4", "<CMD>LualineBuffersJump! 4<CR>", { desc = "Switch to buffer 4" })
vim.keymap.set("n", "<leader>5", "<CMD>LualineBuffersJump! 5<CR>", { desc = "Switch to buffer 5" })
vim.keymap.set("n", "<leader>6", "<CMD>LualineBuffersJump! 6<CR>", { desc = "Switch to buffer 6" })
vim.keymap.set("n", "<leader>7", "<CMD>LualineBuffersJump! 7<CR>", { desc = "Switch to buffer 7" })
vim.keymap.set("n", "<leader>8", "<CMD>LualineBuffersJump! 8<CR>", { desc = "Switch to buffer 8" })
vim.keymap.set("n", "<leader>9", "<CMD>LualineBuffersJump! 9<CR>", { desc = "Switch to buffer 9" })
vim.keymap.set("n", "<leader>0", "<CMD>LualineBuffersJump! $<CR>", { desc = "Switch to last buffer" })
