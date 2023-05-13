require('competitest').setup()

local map = vim.keymap.set
map('n', '<space>to', ':CompetiTestRunNE<CR>', { desc = '[T]est [O]pen', noremap = true, silent = true })
map('n', '<space>tdt', ':CompetiTestReceive testcases<CR>', { desc = '[T]est [D]ownload [T]estcases', noremap = true, silent = true })
map('n', '<space>tdp', ':CompetiTestReceive problem<CR>', { desc = '[T]est [D]ownload [P]roblem', noremap = true, silent = true })
map('n', '<space>tdc', ':CompetiTestReceive contest<CR>', { desc = '[T]est [D]ownload [C]ontest', noremap = true, silent = true })
map('n', '<space>ta', ':CompetiTestAdd<CR>', { desc = '[T]est [A]dd', noremap = true, silent = true })
map('n', '<space>te', ':CompetiTestEdit ', { desc = '[T]est [A]dd', noremap = true })
