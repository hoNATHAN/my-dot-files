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

      -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
      -- add ~org~ to ignore_install
      -- require('nvim-treesitter.configs').setup({
      --   ensure_installed = 'all',
      --   ignore_install = { 'org' },
      -- })
    end,
  },

  -- org roam
  {
    "chipsenkbeil/org-roam.nvim",
    tag = "0.1.1",
    dependencies = {
      {
        "nvim-orgmode/orgmode",
        tag = "0.3.7",
      },
    },
    config = function()
      require("org-roam").setup({
        directory = "~/org_roam_files",
        -- optional
        org_files = {
          "~/another_org_dir",
          "~/some/folder/*.org",
          "~/a/single/org_file.org",
        },
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
          headlines = { "◈", "◆", "◇", "⋄" },
          checkboxes = {
            done = { "✓", "@org.keyword.done" },
            todo = { " ", "@org.keyword.todo" },
          },
        },
      })
    end,
  },
}
