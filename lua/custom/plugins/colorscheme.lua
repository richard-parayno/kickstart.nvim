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
    name = 'neovim-ayu',
    config = function()
      require('ayu').setup {
        mirage = true,
        terminal = true,
      }
      vim.cmd.colorscheme 'ayu'
    end,
  },
  {
    'zenbones-theme/zenbones.nvim',
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = 'rktjmp/lush.nvim',
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
  },
}
