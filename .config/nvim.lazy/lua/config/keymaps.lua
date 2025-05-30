vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "K", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("x", "<leader>d", [["_d]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank highlighted text to clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank highlighted lines to clipboard" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move cursor and screen down 1/2 page " })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move cursor and screen up 1/2 page " })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set({ "v", "i" }, "<C-c>", "<Esc>")
