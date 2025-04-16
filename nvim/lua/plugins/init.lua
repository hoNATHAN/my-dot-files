return {
  -- orgmode plugins
  { import = "plugins.orgmode" },

  -- themes
  -- i only rlly use these three
  { import = "plugins.themes" },
  -- { import = "plugins.onedark" },
  -- { import = "plugins.solarized-osaka" },
  -- { import = "plugins.onedarkpro" },

  -- some tooling/ui
  { import = "plugins.markdown-preview" },
  { import = "plugins.lazygit" },
  { import = "plugins.oil" }, -- world's best plugin
  { import = "plugins.toggleterm" },
  { import = "plugins.plenary" },
  { import = "plugins.snacks" },

  -- default color system
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
