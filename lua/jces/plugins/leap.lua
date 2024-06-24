return {
	"ggandor/leap.nvim",
	event = "VeryLazy",
	config = function()
		vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap-forward)")
		vim.keymap.set({ "n", "x", "o" }, "S", "<Plug>(leap-backward)")
		vim.keymap.set({ "n", "x", "o" }, "ss", "<Plug>(leap-from-window)")
	end,
}
