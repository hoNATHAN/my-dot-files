return {
  -- solarized osaka
  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  -- },

  -- rose pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      transparency = true,
    },
  },

  -- solarized osaka
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  -- lazy git
  {
    "kdheepak/lazygit.nvim",
  },

  -- oil nvim for file explorer
  {
    "stevearc/oil.nvim",
    opts = { view_options = { show_hidden = true } },
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  -- toggle terminal
  { "akinsho/toggleterm.nvim", version = "*", config = true },

  -- scroll bar (doesnt work)
  { "Xuyuanp/scrollbar.nvim" },

  -- tetris
  { "alec-gibson/nvim-tetris" },

  -- default color system
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
    {
      "kawre/leetcode.nvim",
      build = ":TSUpdate html",
      dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim", -- required by telescope
        "MunifTanjim/nui.nvim",

        -- optional
        "nvim-treesitter/nvim-treesitter",
        "rcarriga/nvim-notify",
        "nvim-tree/nvim-web-devicons",
      },
      opts = {
        -- configuration goes here
      },
    },
  },
}
