---------------------------------------------------------------------------------------------------
-- KEYBINDS
---------------------------------------------------------------------------------------------------
-- move around splits using Ctrl + {left, down, up, right}
vim.api.nvim_set_keymap('n', '<C-Left>', '<C-w>h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Down>', '<C-w>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Up>', '<C-w>k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Right>', '<C-w>l', {noremap = true, silent = true})

-- tabs
vim.api.nvim_set_keymap('n', '<S-t>', ':tabnew<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-x>', ':bdelete!<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-p>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-o>', ':bprevious<CR>', {noremap = true, silent = true})

-- nvim-tree shortcuts
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeRefresh<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFindFile<CR>', {noremap = true, silent = true})

-- copy everything
--vim.api.nvim_set_keymap('n', '<C-a>', [[ <Cmd> %y+<CR>]], {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-a>', [[ggVG<CR>]], {noremap = true, silent = true})

-- open terminal
vim.api.nvim_set_keymap('n', '<C-o>', '<CMD>lua require("FTerm").toggle()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<C-o>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', {noremap = true, silent = true})

-- tab completion
vim.api.nvim_set_keymap('i', '<Tab>', [[pumvisible() ? "\<C-n>" : "\<Tab>"]], {noremap=true, expr=true, silent = true})

