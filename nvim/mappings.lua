require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "tmux pane left / vim split left" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "tmux pane down / vim split down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "tmux pane up / vim split up" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "tmux pane right / vim split right" },
  },
}

return M
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
