return {
  {
    'folke/tokyonight.nvim',
    opts = {
      transparent = true,
      styles = {
        sidebars = 'transparent',
        floats = 'transparent',
      },
    },
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
      transparent_background = true,
      float = {
        transparent = true,
        solid = true,
      },
      auto_integrations = true,
    },
  },
  {
    'Shatur/neovim-ayu',
    config = function()
      require('ayu').setup {
        overrides = {
          Normal = { bg = 'None' },
          NormalFloat = { bg = 'none' },
          ColorColumn = { bg = 'None' },
          SignColumn = { bg = 'None' },
          Folded = { bg = 'None' },
          FoldColumn = { bg = 'None' },
          CursorLine = { bg = 'None' },
          CursorColumn = { bg = 'None' },
          VertSplit = { bg = 'None' },
        },
      }

      vim.cmd.colorscheme 'ayu'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
