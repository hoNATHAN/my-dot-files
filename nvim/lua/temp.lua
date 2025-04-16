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

  -- its so fucking buggy idk why
  -- -- neoscroll smooth
  -- {
  --   "karb94/neoscroll.nvim",
  --   opts = {},
  -- },

  -- glsl syntax highlighting
  {
    "tikhomirov/vim-glsl",
  },

  -- plenary (for some reason i need it for neorg)
  {
    "nvim-lua/plenary.nvim",
  },

  -- neo org
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

  -- fzf lua
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "echasnovski/mini.icons" },
    opts = {},
  },
  {
    "snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          header = [[


+++++++00000                                                  remove the eye from the medium                                      
                                                                   and the art will succeed

                        ....                                            ....                        
                      .:@%@@@=.                                       :@@@%@=.                      
                     .+@*#@::.*                                      -::.%%##%.                     
                  .%@*-*.**#...@*.             .......             =%: :+%+:-*=#@=                  
                  .@@=+#*#:-%+:#%.      -%@@@@%%%###%%@@@@@+.      =#:=**.+%+#:@@-                  
                 .#@+##+:@#@%:.*.       =@-...        ...:%*.      .*..#@#@=:%%-@@.                 
                 #@@@#:@%#:-+=.=.         ...::------::...         .*.:-*.*@@=*#@@%.                
               :=@=.=#:=.#=.*+:.-=                                .*..-%.-%.+.*==-#+*               
               :.%.-@+@@%+-*%@*..-+       .+=.        .=*-.      :*..:@##+-%@@*@#.+-=               
            ....%+.-*-*=#@+%-:@#...@..   =+:.-*.    .-*..-%.   .#+..*@=.#####+:-#.:@-...            
            ..-#-:*%:#*:*=+@%-@@....-*##+....:-+.   -*.:...-*#*=.. .#@++@%=*:-@.%=.-#=:..           
            +-=:-%@@*@#=#-:@=.@@@*:=:....+.+:..#.   *...---.....:.#%@@--%+-+*=@%#%@=:=-+.           
           ...-#@@:%%*@@%:-%=+%@@@@@@@@@@@@@@=-#.   *-:@@@@@@@@@@@@@@@#:@=:+@@%+@.%@@*...           
            =%+==@--.:@*+*@#%+%-:%%@-*@@@@@@@-.      .:%@@@@@@#=*@%+.++#*@%-*@+ .+@#*---.           
       .+:.-#... *-+:%*@..@@@%%.+..#*.-*.    :-      .=.   .+:   :-=-...*.*%...-+:@= ..+*..#.       
      .*%=...    .%*:.%*+.:@@%%#.#..@#:.+..   .      ..    :@.   #.@=..=:-#.. .*.-%.     .:%+=      
     =                 .#...*:+...+*=...%@++.         +- ..*.#.   .=#-.. .*.#:.               +     
                                  .:@:@.                    @@@@%+.+%.                              
                               .-=.:#..                     ..*-...:=.                              
                              .=-.%..                          .#:. :+.                             
                              =:*-.                              .#..+:.                            
                            .=+#..                                 .*.#.                            
                            -@:.                                    ..*#.                           
                           :#..                                       .:#-.                         
                          .=                                             .*.                        
................          ..                                              ...                       
 ]],
          keys = false,
        },
        -- stylua: ignore
        ------@type snacks.dashboard.Item[]
        ---keys = {
        ---  { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
        ---  { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
        ---  { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
        ---  { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
        ---  { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
        ---  { icon = " ", key = "s", desc = "Restore Session", section = "session" },
        ---  { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
        ---  { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
        ---  { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        ---},
        ---},
      },
    },
  },

  -- markdown preview
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    lazy = false,
    build = ":call mkdp#util#install()",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  -- default color system
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
