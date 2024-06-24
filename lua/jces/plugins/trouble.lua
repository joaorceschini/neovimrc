return {
	"folke/trouble.nvim",
	opts = {}, -- for default options, refer to the configuration section for custom setup.
	cmd = "Trouble",
	keys = {
		-- { "<leader>xx", "<cmd>Trouble<CR>", desc = "open/close trouble list" },
		-- { "<leader>xw", "<cmd>Trouble workspace_diagnostics<CR>", desc = "open trouble workspace diagnostics" },
		{ "<leader>xd", "<cmd>Trouble diagnostics toggle<CR>", desc = "open trouble document diagnostics" },
		{ "<leader>xq", "<cmd>Trouble qflist toggle<CR>", desc = "open trouble quickfix list" },
		{ "<leader>xl", "<cmd>Trouble loclist toggle<CR>", desc = "open trouble location list" },
	},
}
