local util = require('keymaps.util')

vim.g.mapleader = " "

-- Escape alternatives:
util.map('i', "jk", "<Esc>", {})
util.map('i', "kj", "<Esc>", {})

util.map({'n','v'}, "<leader>u", ":UndotreeToggle<cr>", { silent = true })
util.map({'n','v'}, "<leader>n", ":NeoTreeReveal<cr>", { silent = true })

util.map({'n','v'}, "<leader>s", ":w!<cr>", { silent = true })
