return {
	"nyoom-engineering/oxocarbon.nvim",
	priority = 1000,
	config = function()
		vim.cmd("colorscheme oxocarbon")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
		vim.api.nvim_set_hl(0, "LineNr", { fg = "#c4c4cf", bg = "none" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopePreviewLine", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopeMatching", { bg = "none" })
	end,
}

--[[return {
	"rose-pine/neovim",
	config = function()
		require("rose-pine").setup({
			styles = {
				variant = "moon",
				transparency = true,
				italic = false,
			},
			before_highlight = function(group, highlight, palette)
				vim.api.nvim_set_hl(0, "@lsp.type.property.typescript", { fg = palette.pink })
				vim.api.nvim_set_hl(0, "@lsp.type.property.typescriptreact", { fg = palette.pink })
			end,
		})
		vim.cmd("colorscheme rose-pine")
	end,
}
]]

--[[ return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      transparent = true,
      styles = {
        sidebars = "transparent", 
        floats = "transparent",
      }
    })

    vim.cmd("colorscheme tokyonight")
  end
} ]]
