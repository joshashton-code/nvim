vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<space>", ":")
vim.keymap.set("n", "o", "o<esc>")
vim.keymap.set("n", "O", "O<esc>")

vim.keymap.set("i", "jj", "<esc>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
