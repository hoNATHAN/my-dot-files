-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lspconfig").glsl_analyzer.setup({})
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
vim.api.nvim_create_autocmd("FileType", {
  pattern = "org",
  callback = function()
    vim.opt.foldlevel = 99 -- open all folds
  end,
})
