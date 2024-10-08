-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local Util = require("lazyvim/util")

map("n", "<leader>gg", function()
  LazyVim.lazygit({ cwd = LazyVim.root.git(), border = "rounded" })
end, { desc = "Lazygit (Root Dir)" })

map("n", "<leader>fT", function()
  Util.terminal(nil, { cwd = Util.root(), border = "rounded" })
end, { desc = "Terminal (root)" })

map("n", "<leader>ft", function()
  Util.terminal(nil, { border = "rounded" })
end, { desc = "Terminal (cwd)" })

map("n", "<leader>bs", "<cmd>BufferLinePick<cr>", { desc = "BufferLine Select" })

map("t", "<esc>", "<cmd>close<cr>", { desc = "Hide Terminal" })
