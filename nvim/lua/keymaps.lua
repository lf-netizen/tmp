-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- prime remaps
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<C-z>', 'zz')

vim.keymap.set('i', '<C-c>', '<Esc>')

-- Copy-paste
--
-- - y
-- normal yank
-- sys clipboard yank
-- -d
-- normal d
-- void reg d
-- - p
-- normap p
-- void reg p
-- system clipboard p (optional)

-- vim.keymap.set({ 'n', 'x' }, 'p', '<Plug>(YankyPutAfter)')
-- vim.keymap.set({ 'n', 'x' }, 'P', '<Plug>(YankyPutBefore)')

vim.keymap.set({ 'n', 'v' }, '<leader>p', [["+p]])
vim.keymap.set('v', '<leader>y', [["+y]])

-- vim.keymap.set({ 'n', 'v' }, '<C-D>', [["_d]])
-- vim.keymap.set('x', '<C-p>', [["_dP]])

-- LazyVim remaps
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

vim.keymap.set('n', '<C-q>', '<cmd>qa<cr>', { desc = 'Quit all' })
vim.keymap.set('n', '<leader>qf', '<cmd>qa!<cr>', { desc = 'Quit all [force]' })

vim.keymap.set('n', '<c-w>', '<cmd>q<cr>', { desc = 'Quit buffer' })
vim.keymap.del('n', '<C-w>d')
vim.keymap.del('n', '<C-w><C-d>')

vim.keymap.set({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save file' })

-- Buffers
vim.keymap.set('n', '<C-Tab>', '<cmd>e #<cr>', { desc = 'Switch to Other Buffer' })
vim.keymap.set('n', '<S-h>', '<cmd>bprevious<cr>', { desc = 'Prev buffer' })
vim.keymap.set('n', '<S-l>', '<cmd>bnext<cr>', { desc = 'Next buffer' })

-- tbd fix this
vim.keymap.set('n', '<C-->', '<cmd>split<cr>', { desc = 'Split window below', remap = true })
vim.keymap.set('n', '<C-\\>', '<cmd>vsplit<cr>', { desc = 'Split window right', remap = true })
vim.keymap.set('n', '<leader>\\', '<cmd>vsplit<cr>', { desc = 'Split window right', remap = true })

-- Resize window using <alt> arrow keys
vim.keymap.set({ 'n', 't' }, '<A-Down>', '<cmd>resize +2<cr>', { desc = 'Decrease window height' })
vim.keymap.set({ 'n', 't' }, '<A-Up>', '<cmd>resize -2<cr>', { desc = 'Increase window height' })
vim.keymap.set({ 'n', 't' }, '<A-Left>', '<cmd>vertical resize +2<cr>', { desc = 'Decrease window width' })
vim.keymap.set({ 'n', 't' }, '<A-Right>', '<cmd>vertical resize -2<cr>', { desc = 'Increase window width' })

-- Move Lines
vim.keymap.set('n', '<A-j>', '<cmd>m .+1<cr>==', { desc = 'Move down' })
vim.keymap.set('n', '<A-k>', '<cmd>m .-2<cr>==', { desc = 'Move up' })
vim.keymap.set('i', '<A-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move down' })
vim.keymap.set('i', '<A-k>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move up' })
vim.keymap.set('v', '<A-j>', ":m '>+1<cr>gv=gv", { desc = 'Move down' })
vim.keymap.set('v', '<A-k>', ":m '<-2<cr>gv=gv", { desc = 'Move up' })

-- Diagnostics
-- vim.keymap.set('n', '<leader>k', function()
--   vim.diagnostic.open_float(nil, { scope = 'line' })
-- end)

-- vim: ts=2 sts=2 sw=2 et

