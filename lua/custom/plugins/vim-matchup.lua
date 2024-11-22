return {
  {
    'andymass/vim-matchup',
    init = function()
      -- Disable default highlighting behavior
      vim.g.matchup_matchparen_hi_background = 0
      vim.g.matchup_matchparen_hi_surround_always = 0
      vim.g.matchup_matchparen_offscreen = { method = 'popup' }
      vim.g.matchup_matchparen_enabled = 0
    end,
  },
}
