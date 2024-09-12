return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	event = "VeryLazy",
	require = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup({
			settings = {
				save_on_toggle = true,
				sync_on_ui_close = true,
			},
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>H", function()
			harpoon:list():add()
		end)
		keymap.set("n", "<leader>h", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		keymap.set("n", "<leader>1", function()
			harpoon:list():select(1)
		end)
		keymap.set("n", "<leader>2", function()
			harpoon:list():select(2)
		end)
		keymap.set("n", "<leader>3", function()
			harpoon:list():select(3)
		end)
		keymap.set("n", "<leader>4", function()
			harpoon:list():select(4)
		end)
	end,
}
