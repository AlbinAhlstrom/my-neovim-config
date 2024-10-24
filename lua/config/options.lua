-- :help option-list

-- Make relative line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive search UNLESS using capital letters or \C
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Set swapfile update time
vim.opt.updatetime = 2000

-- Set mapped sequence wait time
-- Time before which-key popup
vim.opt.timeoutlen = 1500

-- Set location of new window splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Configure method of displaying whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live
vim.opt.inccommand = 'split'

-- Highlight the text line of the cursor
vim.opt.cursorline = true

-- Set minimum cursor distance to end of window
vim.opt.scrolloff = 10

-- Automatically cd to current window
vim.opt.autochdir = false

-- Location of line max marker
vim.opt.colorcolumn = '80'

-- Highlight on search
vim.opt.hlsearch = true

-- Nerd font support
vim.g.have_nerd_font = true

-- 24-bit RGB color support
vim.opt.termguicolors = true

-- swapfile or not
vim.opt.swapfile = false

-- vim: ts=2 sts=2 sw=2 et
