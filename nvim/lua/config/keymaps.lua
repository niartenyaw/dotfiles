vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move higlighted lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep up/down jumps in center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep next jumps in the center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- keep next jumps in the center
-- vim.keymap.set("n", "<C-j>", "<C-w>j")
-- vim.keymap.set("n", "<C-k>", "<C-w>k")
-- vim.keymap.set("n", "<C-h>", "<C-w>h")
-- vim.keymap.set("n", "<C-l>", "<C-w>l")

-- paste over highlight doesn't replace yanked with the replaced value
vim.keymap.set("x", "<leader>p", '"_dP')

-- close current buffer without closing current window
vim.keymap.set("n", "<leader>q", ":bp<CR>:bd #<CR>")
