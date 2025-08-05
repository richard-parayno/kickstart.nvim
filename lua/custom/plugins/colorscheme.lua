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
    end,
  },
  {
    'Everblush/nvim',
    name = 'everblush',
    config = function()
      require('everblush').setup {}
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
    config = function()
      vim.g.neobones_darken_comments = 45
      vim.g.neobones_transparent_background = true
      vim.g.neobones_solid_vert_split = true
      -- vim.g.neobones_solid_line_nr = true
      vim.g.neobones_solid_float_border = true
      vim.cmd.colorscheme 'neobones'
    end,
  },
}
