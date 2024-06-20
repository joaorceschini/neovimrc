return {
	"rmagatti/auto-session",
	config = function()
		local auto_session = require("auto-session")

		auto_session.setup({
			auto_restore_enabled = false,
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>ar", "<cmd>SessionRestore<CR>", { desc = "restore session for cwd" })
		keymap.set("n", "<leader>as", "<cmd>SessionSave<CR>", { desc = "save session for auto session root dir" })
	end,
}
