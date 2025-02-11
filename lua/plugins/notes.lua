return {
  {
    "nvim-orgmode/orgmode",
    event = "VeryLazy",
    ft = { "org" },
    config = function()
      -- Setup orgmode
      require("orgmode").setup({
        org_agenda_files = "~/org/**/*",
        org_default_notes_file = "~/org/refile.org",
        org_cycle_separator_lines = 1,
        org_blank_before_new_entry = {
          heading = false,
          plain_list_item = false,
        },
        org_startup_folded = "showeverything",
        org_hide_leading_stars = true,
      })

      -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
      -- add ~org~ to ignore_install
      -- require('nvim-treesitter.configs').setup({
      --   ensure_installed = 'all',
      --   ignore_install = { 'org' },
      -- })
    end,
  },

  {
    "nvim-orgmode/org-bullets.nvim",
    config = function()
      require("org-bullets").setup({
        symbols = {
          headlines = { "◉", "○", "◉", "○" },
        },
      })
    end,
  },
}
