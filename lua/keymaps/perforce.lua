local util = require('keymaps.util')

util.map({'n','v'}, "<leader>a", ":p4 add %<cr>", { silent = true })
util.map({'n','v'}, "<leader>e", ":p4 edit %<cr>", { silent = true })
