-- rlly interested about the development of neorg
-- but tbh its a bit lackluster for me right now
-- maybe one day i will give it a try again
return {
  {
    "nvim-neorg/neorg",
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    ft = { "norg" },
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {
            config = {
              -- i fucking hate folds on note files
              icon_preset = "diamond",
            },
          },

          ["core.ui"] = {},
          ["core.esupports.hop"] = {},

          ["core.dirman"] = {
            -- my workspaces can add any more
            config = {
              workspaces = {
                misc = "~/dev/norg/misc",
                cs = "~/dev/norg/cs",
                planner = "~/dev/norg/planner",
              },
            },
          },
          ["core.tempus"] = {},
        },
      })
    end,
  },
}
