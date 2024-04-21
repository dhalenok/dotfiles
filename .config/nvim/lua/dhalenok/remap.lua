vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("x", "<leader>d", [["_d]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank highlighted text to clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank highlighted lines to clipboard" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move cursor and screen down 1/2 page " })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move cursor and screen up 1/2 page " })
