local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'tpope/vim-sleuth',
  'numToStr/Comment.nvim',
  'tpope/vim-fugitive',
  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>')
    end,
  },
  {
    'zbirenbaum/copilot.lua',
    config = function()
      require('copilot').setup {
        suggestion = { enabled = false },
        panel = { enabled = false },
      }
    end,
  },
  {
    'zbirenbaum/copilot-cmp',
    config = function()
      require('copilot_cmp').setup()
    end,
  },
  {
    {
      'CopilotC-Nvim/CopilotChat.nvim',
      branch = 'canary',
      dependencies = {
        { 'zbirenbaum/copilot.lua' },
        { 'nvim-lua/plenary.nvim' },
      },
      opts = {
        debug = true,
      },
    },
  },
  require 'plugins.gitsigns',
  require 'plugins.which-key',
  require 'plugins.telescope',
  require 'plugins.lspconfig',
  require 'plugins.conform',
  require 'plugins.cmp',
  require 'plugins.themes',
  require 'plugins.todo-comments',
  require 'plugins.mini',
  require 'plugins.treesitter',
  require 'plugins.debug',
  require 'plugins.nvim-test',
  require 'plugins.indent_line',
  require 'plugins.lint',
  require 'plugins.autopairs',
  require 'plugins.neo-tree',
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
