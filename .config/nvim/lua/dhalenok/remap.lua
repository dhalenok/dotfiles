vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set('n', '<leader>1', function() vim.cmd.LualineBuffersJump(1) end)
vim.keymap.set('n', '<leader>2', function() vim.cmd.LualineBuffersJump(2) end)
vim.keymap.set('n', '<leader>3', function() vim.cmd.LualineBuffersJump(3) end)
vim.keymap.set('n', '<leader>4', function() vim.cmd.LualineBuffersJump(4) end)
vim.keymap.set('n', '<leader>5', function() vim.cmd.LualineBuffersJump(5) end)
vim.keymap.set('n', '<leader>6', function() vim.cmd.LualineBuffersJump(6) end)
vim.keymap.set('n', '<leader>7', function() vim.cmd.LualineBuffersJump(7) end)
vim.keymap.set('n', '<leader>8', function() vim.cmd.LualineBuffersJump(8) end)
vim.keymap.set('n', '<leader>9', function() vim.cmd.LualineBuffersJump(9) end)
vim.keymap.set('n', '<leader>0', function() vim.cmd.LualineBuffersJump("$") end)

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
