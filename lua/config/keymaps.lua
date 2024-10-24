local map = vim.keymap.set

-- Clear search highlight
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
map('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
map('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Disable arrow keys in normal mode
map('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
map('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
map('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
map('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Window navigation with CTRL+<hjkl> in normal mode
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Arrow key movement wih CTRL+<hjkl> in insert mode
map('i', '<C-h>', '<Left>', { desc = 'Move left' })
map('i', '<C-l>', '<Right>', { desc = 'Move right' })
map('i', '<C-j>', '<Down>', { desc = 'Move down' })
map('i', '<C-k>', '<Up>', { desc = 'Move up' })

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Change local settings
map('n', '<leader>cls', '<cmd>e ~/settings/local_settings.py<CR><cmd>w!<CR>', { desc = 'Change local settings file' })
map('n', '<leader>cli', '<cmd>e ~/settings/local_settings.py<CR>gg0ci"ixb<Esc>0<cmd>w!<CR>', { desc = 'Change local settings file' })
map('n', '<leader>clp', '<cmd>e ~/settings/local_settings.py<CR>gg0ci"pf8<Esc>0<cmd>w!<CR>', { desc = 'Change local settings file' })
-- Map command mode
map('n', 'ö', ':')

map('n', '<leader>ga', '<cmd>G add %<CR>')
map('n', '<leader>gs', '<cmd>G<CR>')

map('n', '<leader>k', '<C-w><C-l><cmd>:quit<CR>')
map('n', 'Ö', ']m')
-- vim: ts=2 sts=2 sw=2 et
