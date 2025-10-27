return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  after = 'catppuccin',
  config = function()
    require('bufferline').setup {
      options = {
        mode = 'tabs',
        separator_style = 'thin',
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
      highlights = require('catppuccin.special.bufferline').get_theme(),
    }
  end,
}
