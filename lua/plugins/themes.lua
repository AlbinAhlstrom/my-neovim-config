return {
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'catppuccin-macchiato'

      vim.cmd.hi 'Comment gui=none'
    end,
  },
  'rebelot/kanagawa.nvim',
  'catppuccin/nvim',
}
-- vim: ts=2 sts=2 sw=2 et,
