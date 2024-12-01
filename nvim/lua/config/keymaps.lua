-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

return {
  vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
  keys = {
    {
      "<Space>e",
      function()
        require("neo-tree.command").execute({
          toggle = true,
          source = "filesystem",
          position = "right",
        })
      end,
      desc = "Filesystem (root dir)",
    },
  },
  vim.keymap.set("n", "<leader>wt", "<CMD>ToggleTerm<CR>", { desc = "open bottom terminal" }),
}
