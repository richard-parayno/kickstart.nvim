return {

  filetypes = { 'ruby' },

  cmd = { 'bundle', 'exec', 'ruby-lsp' },

  root_markers = { 'Gemfile', '.git' },

  init_options = {
    formatter = 'rubocop_internal',
    linters = { 'rubocop_internal' },
    addonSettings = {
      ['Ruby LSP Rails'] = {
        enablePendingMigrationsPrompt = false,
      },
    },
  },
}
