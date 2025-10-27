return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 200,
          winbar = 1000,
          refresh_time = 16, -- ~60fps
          events = {
            'WinEnter',
            'BufEnter',
            'BufWritePost',
            'SessionLoadPost',
            'FileChangedShellPost',
            'VimResized',
            'Filetype',
            'CursorMoved',
            'CursorMovedI',
            'ModeChanged',
          },
        },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = {
          'filename',
          -- Copilot status
          {
            function()
              return ' '
            end,
            color = function()
              local status = require('sidekick.status').get()
              if status then
                return status.kind == 'Error' and 'DiagnosticError' or status.busy and 'DiagnosticWarn' or 'Special'
              end
            end,
            cond = function()
              local status = require 'sidekick.status'
              return status.get() ~= nil
            end,
          },
        },
        lualine_x = {
          'encoding',
          -- CLI session status
          {
            function()
              local status = require('sidekick.status').cli()
              return ' ' .. (#status > 1 and #status or '')
            end,
            cond = function()
              return #require('sidekick.status').cli() > 0
            end,
            color = function()
              return 'Special'
            end,
          },
          'fileformat',
          'filetype',
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {
        lualine_a = {
          {
            'tabs',
            mode = 2,
            path = 0,
            show_modified_status = true,
          },
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = { { 'filename', file_status = true, path = 1 } },
        lualine_z = {},
      },
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    }
  end,
}
