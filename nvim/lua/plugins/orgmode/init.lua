return {
  -- nvim orgmode
  {
    "nvim-orgmode/orgmode",
    event = "VeryLazy",
    ft = { "org" },
    config = function()
      require("orgmode").setup({
        org_agenda_files = "~/dev/notes/**/*",
        org_default_notes_file = "~/dev/notes/todo/todo.org",
      })

      require("blink.cmp").setup({
        sources = {
          per_filetype = {
            org = { "orgmode" },
          },
          providers = {
            orgmode = {
              name = "Orgmode",
              module = "orgmode.org.autocompletion.blink",
              fallbacks = { "buffer" },
            },
          },
        },
      })
    end,
  },

  -- org roam
  {
    "chipsenkbeil/org-roam.nvim",
    tag = "0.1.1",
    config = function()
      require("org-roam").setup({
        directory = "~/dev/notes/roam",
      })
    end,
  },

  -- org modern
  {
    "danilshvalov/org-modern.nvim",
    ft = "org",
    lazy = false,
    config = function()
      local Menu = require("org-modern.menu")

      require("orgmode").setup({
        ui = {
          menu = {
            handler = function(data)
              Menu:new({
                window = {
                  margin = { 1, 0, 1, 0 },
                  padding = { 0, 1, 0, 1 },
                  title_pos = "center",
                  border = "single",
                  zindex = 1000,
                },
                icons = {
                  separator = "➜",
                },
              }):open(data)
            end,
          },
        },
      })
    end,
  },

  -- org bullets
  {
    "akinsho/org-bullets.nvim",
    name = "org-bullets",
    config = function()
      require("org-bullets").setup({
        concealcursor = false, -- If false then when the cursor is on a line underlying characters are visible
        symbols = {
          list = "•",
          headlines = { "◈", "◆", "◇", "◆" },
          checkboxes = {
            done = { "✓", "@org.keyword.done" },
            todo = { " ", "@org.keyword.todo" },
          },
        },
      })
    end,
  },
}
