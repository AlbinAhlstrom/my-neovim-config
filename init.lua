vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

require 'config.lazy'

require 'config.options'

require 'config.keymaps'

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Run the nearest test
map('n', '<Leader>tn', '<cmd>TestNearest<CR>')

-- Run the current file
map('n', '<Leader>tf', '<cmd>TestFile<CR>')

-- vim: ts=2 sts=2 sw=2 et
