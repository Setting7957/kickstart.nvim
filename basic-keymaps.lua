vim.keymap.set('n', '-', '$', { desc = 'Go to the end of the line in normal mode' })
vim.keymap.set('v', '-', '$', { desc = 'Go to the end of the line in visual mode' })
vim.keymap.set('s', '-', '$', { desc = 'Go to the end of the line in select mode' })

vim.keymap.set('c', 'W<CR>', 'w<CR>', { desc = 'W to also save a file in command mode' })

vim.keymap.set('i', '<C-BS>', '<Esc>dbxi', { desc = 'Ctrl-backspace to erase entire word' })
vim.keymap.set('', '<C-c>', '"+y', { desc = 'Ctrl-c to copy' })
vim.keymap.set('', '<S-Cv>', '<Esc>"+gP', { desc = 'Ctrl-v to paste' })
vim.keymap.set('!', '<S-Cv>', '<Esc>"+gP', { desc = 'Ctrl-v to paste' })

vim.keymap.set('n', '<Leader><Tab>', ':b#<CR>', { desc = 'Switch to last buffer' })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
