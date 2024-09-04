-- If the line is broke, go one by one
vim.keymap.set('n', 'k', 'v:count == 0 ? "gk" : "k"', {expr = true, noremap = true})
vim.keymap.set('n', 'j', 'v:count == 0 ? "gj" : "j"', {expr = true, noremap = true})

vim.keymap.set('v', 'k', 'v:count == 0 ? "gk" : "k"', {expr = true, noremap = true})
vim.keymap.set('v', 'j', 'v:count == 0 ? "gj" : "j"', {expr = true, noremap = true})

-- Move line 
-- vim.keymap.set('n', '<C-j>', "<cmd>m+1<CR>", {})
-- vim.keymap.set('n', '<C-k>', "<cmd>m-2<CR>", {})
