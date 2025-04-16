return {
  -- orgmode plugins
  { import = "plugins.orgmode" },
  { import = "plugins.org-bullets" },
  { import = "plugins.org-modern" },
  { import = "plugins.org-roam" },

  -- themes
  -- i only rlly use these three
  { import = "plugins.gruvbox" },
  { import = "plugins.papercolor" },
  { import = "plugins.everforest" },
  { import = "plugins.rose-pine" },
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
