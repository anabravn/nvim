return {
  {
    "nvim-neorg/neorg",
    config = {
      load = {
        ["core.summary"] = {},
        ["core.defaults"] = {},
        ["core.export"] = {},
        ["core.ui.calendar"] = {},
        ["core.journal"] = {
          config = {
            strategy = "flat",
          },
        },
        ["core.concealer"] = {
          config = {
            icons = {
              delimiter = {
                horizontal_line = {
                  icon = "-",
                },
                strong = {
                  icon = "-",
                },
                weak = {
                  icon = " ",
                },
              },
              heading = {
                icons = {
                  "",
                  "",
                  "",
                },
              },
            },
          },
        },
        ["core.dirman"] = {
          config = {
            default_workspace = "notes",
            workspaces = {
              notes = "~/notes",
            },
          },
        },
      },
    },
  },
}
