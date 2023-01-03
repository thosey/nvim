local util = require('keymaps.util')

-- Use Ctrl + hjkl to move between splits
util.map("n", "<C-h>", "<C-W>h", { silent = true })
util.map("n", "<C-j>", "<C-W>j", { silent = true })
util.map("n", "<C-k>", "<C-W>k", { silent = true })
util.map("n", "<C-l>", "<C-W>l", { silent = true })

--  Use alt + hjkl to resize splits
util.map("n", "<M-h>", ":vertical resize -2<CR>", { silent = true })
util.map("n", "<M-j>", ":resize -2<CR>", { silent = true })
util.map("n", "<M-k>", ":resize +2<CR>", { silent = true })
util.map("n", "<M-l>", ":vertical resize +2<CR>", { silent = true })

