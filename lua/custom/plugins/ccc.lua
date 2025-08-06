return {
  'uga-rosa/ccc.nvim',
  name = 'ccc',
  config = function()
    local ccc = require 'ccc'
    ccc.setup {
      highlighter = {
        auto_enable = true,
        lsp = true,
      },
      outputs = {
        ccc.output.hex,
        ccc.output.hex_short,
        ccc.output.css_rgb,
        ccc.output.css_rgba,
        ccc.output.css_hsl,
      },
    }
    vim.keymap.set('n', '<leader>cp', ':CccPick<CR>', { desc = 'Open color picker' })
    vim.keymap.set('n', '<leader>ct', ':CccHighlighterToggle<CR>', { desc = 'Toggle color highlighting' })
  end,
}
