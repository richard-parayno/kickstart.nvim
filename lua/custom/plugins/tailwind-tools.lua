return {
  'luckasRanarison/tailwind-tools.nvim',
  name = 'tailwind-tools',
  build = ':UpdateRemotePlugins',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-telescope/telescope.nvim', -- optional
    'neovim/nvim-lspconfig', -- optional
  },
  opts = {
    server = {
      override = true,
      settings = {
        classFunctions = { '%w\\[([^\\]]*)\\]' },
        includeLanguages = {
          eruby = 'html',
          ruby = 'html',
        },
      },
    },
  },
}
