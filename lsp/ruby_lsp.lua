return {

  filetypes = { 'ruby' },

  cmd = { 'bundle', 'exec', 'ruby-lsp' },

  root_markers = { 'Gemfile', '.git' },

  init_options = {
    formatter = 'standard',
    linters = { 'standard' },
    addonSettings = {
      ['Ruby LSP Rails'] = {
        enablePendingMigrationsPrompt = false,
      },
    },
  },
}
