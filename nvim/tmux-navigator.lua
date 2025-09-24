return {
  {
    "christoomey/vim-tmux-navigator",
    event = "VeryLazy",
    keys = {
      { "<C-h>", "<cmd> TmuxNavigateLeft<CR>", desc = "tmux pane left / vim split left" },
      { "<C-j>", "<cmd> TmuxNavigateDown<CR>", desc = "tmux pane down / vim split down" },
      { "<C-k>", "<cmd> TmuxNavigateUp<CR>", desc = "tmux pane up / vim split up" },
      { "<C-l>", "<cmd> TmuxNavigateRight<CR>", desc = "tmux pane right / vim split right" },
      { "<C-\\>", "<cmd> TmuxNavigatePrevious<CR>", desc = "tmux previous pane / vim previous split" },
    },
  },
}
