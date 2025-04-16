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

  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- nvim orgmode
  {
    "nvim-orgmode/orgmode",
    event = "VeryLazy",
    ft = { "org" },
    config = function()
      require("orgmode").setup({
        org_agenda_files = "~/dev/notes/**/*",
        org_default_notes_file = "~/dev/notes/refile.org",
      })

      -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
      -- add ~org~ to ignore_install
      -- require('nvim-treesitter.configs').setup({
      --   ensure_installed = 'all',
      --   ignore_install = { 'org' },
      -- })
    end,
  },

  -- org bullets
  {
    "akinsho/org-bullets.nvim",
    config = function()
      require("org-bullets").setup({
        concealcursor = false, -- If false then when the cursor is on a line underlying characters are visible
        symbols = {
          list = "•",
          headlines = { "◉", "○", "✸", "✿" },
          -- headlines = function(default_list)
          --   table.insert(default_list, "♥")
          --   return default_list
          -- end,
          -- or false to disable the symbol. Works for all symbols
          -- headlines = false,
          -- or a table of tables that provide a name
          -- and (optional) highlight group for each headline level
          -- headlines = {
          --   { "◉", "MyBulletL1" }
          --   { "○", "MyBulletL2" },
          --   { "✸", "MyBulletL3" },
          --   { "✿", "MyBulletL4" },
          -- },
          checkboxes = {
            done = { "✓", "@org.keyword.done" },
            todo = { " ", "@org.keyword.todo" },
          },
        },
      })
    end,
  },

  -- org-modern menu
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

  {
    "frabjous/knap",
    lazy = false,
    config = function()
      -- Configure KNAP settings
      vim.g.knap_settings = {
        mdoutputext = "pdf",
        mdtopdf = "pandoc -o %outputfile% --pdf-engine=xelatex",
        mdtopdfviewerlaunch = "zathura %outputfile%",
        mdtopdfviewerrefresh = "none",
        mdtopdfbufferasstdin = true,
      }
    end,
  },

  -- markdown preview

  -- install with yarn or npm
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
