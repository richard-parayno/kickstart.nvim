return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        mode = 'tabs',
        separator_style = 'slant',
        always_show_bufferline = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        color_icons = true,
        modified_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 18,
        max_prefix_length = 15,
        truncate_names = true,
        tab_size = 18,
        diagnostics = 'nvim_lsp',
        custom_areas = {},
        offsets = {},
        show_tab_indicators = false,
      },
      highlights = {
        fill = {
          fg = '#1e1e1e',
          bg = '#1e1e1e',
        },
        background = {
          fg = '#808080',
          bg = '#1e1e1e',
        },
        tab = {
          fg = '#808080',
          bg = '#1e1e1e',
        },
        tab_selected = {
          fg = '#e0e0e0',
          bg = '#252525',
          bold = true,
        },
        tab_close = {
          fg = '#808080',
          bg = '#1e1e1e',
        },
        close_button = {
          fg = '#808080',
          bg = '#1e1e1e',
        },
        close_button_visible = {
          fg = '#808080',
          bg = '#1e1e1e',
        },
        close_button_selected = {
          fg = '#e0e0e0',
          bg = '#252525',
        },
        buffer_visible = {
          fg = '#808080',
          bg = '#1e1e1e',
        },
        buffer_selected = {
          fg = '#e0e0e0',
          bg = '#252525',
          bold = true,
        },
        separator = {
          fg = '#1e1e1e',
          bg = '#1e1e1e',
        },
        separator_visible = {
          fg = '#1e1e1e',
          bg = '#1e1e1e',
        },
        separator_selected = {
          fg = '#1e1e1e',
          bg = '#1e1e1e',
        },
        modified = {
          fg = '#808080',
          bg = '#1e1e1e',
        },
        modified_visible = {
          fg = '#808080',
          bg = '#1e1e1e',
        },
        modified_selected = {
          fg = '#e0e0e0',
          bg = '#252525',
        },
        duplicate = {
          fg = '#808080',
          bg = '#1e1e1e',
        },
        duplicate_visible = {
          fg = '#808080',
          bg = '#1e1e1e',
        },
        duplicate_selected = {
          fg = '#e0e0e0',
          bg = '#252525',
        },
      },
    }
  end,
}
