-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local Util = require("lazyvim/util")
local LazyVim = require("lazyvim")
local opts = { noremap = true, silent = true }

map("n", "<leader>fT", function()
  Util.terminal(nil, { cwd = Util.root(), border = "rounded" })
end, { desc = "Terminal (root)" })

map("n", "<leader>ft", function()
  Util.terminal(nil, { border = "rounded" })
end, { desc = "Terminal (cwd)" })
