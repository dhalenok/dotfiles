return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	init = function()
		vim.g.gitblame_display_virtual_text = 0
	end,
	config = function()
		local harpoon = require("harpoon")
		function Harpoon_files()
			local contents = {}
			local marks_length = harpoon:list():length()
			local current_file_path = vim.fn.fnamemodify(vim.fn.expand("%:p"), ":.")
			for index = 1, marks_length do
				local harpoon_file_path = harpoon:list():get(index).value
				local file_name = harpoon_file_path == "" and "(empty)" or vim.fn.fnamemodify(harpoon_file_path, ":t")

				if current_file_path == harpoon_file_path then
					contents[index] =
						string.format("%%#HarpoonNumberActive# %s. %%#HarpoonActive#%s ", index, file_name)
				else
					contents[index] =
						string.format("%%#HarpoonNumberInactive# %s. %%#HarpoonInactive#%s ", index, file_name)
				end
			end

			return table.concat(contents)
		end

		require("lualine").setup({
			tabline = {
				lualine_a = { { Harpoon_files } },
			},
			winbar = {
				lualine_b = { { "filename", path = 1 } },
				lualine_c = { { "navic", color_correction = "static" } },
			},
		})
	end,
}
