return {
  {
    "nvim-neorg/neorg",
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "v7.0.0", -- This is the important part!
    config = {
      load = {
        ["core.defaults"] = {},
        ["core.export"] = {},
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
                  " ",
                  " ",
                  " ",
                },
              },
            },
          },
        },
        ["core.dirman"] = {
          config = {
            default_workspace = "wiki",
            workspaces = {
              wiki = "~/wiki",
            },
          },
        },
      },
    },
  },
}
