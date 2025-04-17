return {
  -- rose pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      transparency = true,
    },
  },

  -- gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {
      transparency = true,
    },
  },

  -- papercolor
  {
    "NLKNguyen/papercolor-theme",
    name = "papercolor",
  },

  -- everforest
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require("everforest").setup({
        -- Your config here
        background = "hard",
        transparent_background_level = 1,
        italics = false,
        ui_contrast = "high",
      })
    end,
  },

  -- atom one light
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("onedark").setup({
        style = "light", -- Use light mode
      })
    end,
  },

  -- solarized osaka
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  -- onedarkpro
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },

  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").load()
      require("nordic").setup({
        transparent = {
          bg = true,
          float = false,
        },
      })
    end,
  },

  -- {
  --   "shaunsingh/nord.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("nord").setup({
  --       nord_contrast = true,
  --       nord_borders = true,
  --       nord_disabled_background = true,
  --       nord_italics = true,
  --       nord_bold = true,
  --     })
  --   end,
  -- },
}
