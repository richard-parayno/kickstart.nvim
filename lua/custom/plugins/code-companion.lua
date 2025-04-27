return {
  'olimorris/codecompanion.nvim',
  opts = {
    strategies = {
      chat = {
        adapter = 'gemini',
      },
      inline = {
        adapter = 'gemini',
      },
    },
    log_level = 'ERROR',
    adapters = {
      anthropic = function()
        return require('codecompanion.adapters').extend('anthropic', {
          schema = {
            model = {
              default = 'claude-3-5-sonnet-20241022',
            },
          },
        })
      end,
      gemini = function()
        return require('codecompanion.adapters').extend('gemini', {
          schema = {
            model = {
              default = 'gemini-2.5-pro-exp-03-25',
            },
          },
        })
      end,
    },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
}
