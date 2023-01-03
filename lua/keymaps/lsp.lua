local util = require('keymaps.util')

util.map({'n','v'}, "gc", ":lua vim.lsp.buf.outgoing_calls()<cr>", { silent = true })
vim.lsp.buf.outgoing_calls()
