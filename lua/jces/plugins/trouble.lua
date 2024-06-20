return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
  keys = {
    { "<leader>xx", "<cmd>TroubleToggle<CR>", desc = "open/close trouble list" },
    { "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<CR>", desc = "open trouble workspace diagnostics" },
    { "<leader>xd", "<cmd>TroubleToggle document_diagnostics<CR>", desc = "open trouble document diagnostics" },
    { "<leader>xq", "<cmd>TroubleToggle quickfix<CR>", desc = "open trouble quickfix list" },
    { "<leader>xl", "<cmd>TroubleToggle loclist<CR>", desc = "open trouble location list" },
    { "<leader>xt", "<cmd>TodoTrouble<CR>", desc = "open todos in trouble" },
  },
}
