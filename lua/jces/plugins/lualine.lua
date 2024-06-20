return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local colors = {
			bg = nil,
			fg = "#bbc2cf",
			white = "ffffff",
			black = "000000",
			yellow = "#ffffba",
			cyan = "#008080",
			darkblue = "#081633",
			green = "#b8d8be",
			orange = "#ffdfba",
			violet = "#a9a1e1",
			magenta = "#c678dd",
			blue = "#51afef",
			red = "#ffb3ba",
			pink = "#ffd1e8",
		}

		local conditions = {
			buffer_not_empty = function()
				return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
			end,
			hide_in_width = function()
				return vim.fn.winwidth(0) > 80
			end,
			check_git_workspace = function()
				local filepath = vim.fn.expand("%:p:h")
				local gitdir = vim.fn.finddir(".git", filepath .. ";")
				return gitdir and #gitdir > 0 and #gitdir < #filepath
			end,
		}

		local config = {
			options = {
				component_separators = "",
				section_separators = "",
				theme = {
					normal = { c = { fg = colors.fg, bg = colors.bg } },
					inactive = { c = { fg = colors.fg, bg = colors.bg } },
				},
			},
			sections = {
				-- remove defaults
				lualine_a = {},
				lualine_b = {},
				lualine_y = {},
				lualine_z = {},
				-- these will be filled later
				lualine_c = {},
				lualine_x = {},
			},
			inactive_sections = {
				-- remove defaults
				lualine_a = {},
				lualine_b = {},
				lualine_y = {},
				lualine_z = {},
				lualine_c = {},
				lualine_x = {},
			},
		}

		-- inserts a component in lualine_c at left section
		local function ins_left(component)
			table.insert(config.sections.lualine_c, component)
		end

		-- inserts a component in lualine_x at right section
		local function ins_right(component)
			table.insert(config.sections.lualine_x, component)
		end

		--[[ ins_left({
			function()
				return "▊"
			end,
			color = { fg = colors.black }, -- Sets highlighting of component
			padding = { right = 1 }, -- We don't need space before this
		}) ]]

		ins_left({
			-- mode component
			function()
				return ""
			end,
			color = function()
				-- auto change color according to neovims mode
				local mode_color = {
					n = colors.black,
					i = colors.white,
					v = colors.blue,
					[""] = colors.blue,
					V = colors.blue,
					c = colors.magenta,
					no = colors.black,
					s = colors.orange,
					S = colors.orange,
					[""] = colors.orange,
					ic = colors.yellow,
					R = colors.violet,
					Rv = colors.violet,
					cv = colors.black,
					ce = colors.black,
					r = colors.cyan,
					rm = colors.cyan,
					["r?"] = colors.cyan,
					["!"] = colors.black,
					t = colors.black,
				}
				return { fg = mode_color[vim.fn.mode()] }
			end,
			padding = { left = 1, right = 1 },
		})

		--[[ ins_left({
			-- filesize component
			"filesize",
			cond = conditions.buffer_not_empty,
		}) ]]

		ins_left({
			"filename",
			path = 1,
			cond = conditions.buffer_not_empty,
			color = { fg = colors.violet, gui = "bold" },
		})

		ins_left({ "location" })

		-- ins_left({ "progress", color = { fg = colors.fg, gui = "bold" } })

		ins_left({
			"diagnostics",
			sources = { "nvim_diagnostic" },
			symbols = { error = " ", warn = " ", info = " " },
			diagnostics_color = {
				color_error = { fg = colors.red },
				color_warn = { fg = colors.yellow },
				color_info = { fg = colors.cyan },
			},
		})

		-- insert mid section
		ins_left({
			function()
				return "%="
			end,
		})

		ins_right({
			function()
				local msg = "-"
				local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
				local clients = vim.lsp.get_active_clients()
				if next(clients) == nil then
					return msg
				end
				for _, client in ipairs(clients) do
					local filetypes = client.config.filetypes
					if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
						return client.name
					end
				end
				return msg
			end,
			icon = "lsp:",
		})

		--[[ ins_right({
			"o:encoding",
			fmt = string.upper,
			cond = conditions.hide_in_width,
			color = { fg = colors.green, gui = "bold" },
		}) ]]

		ins_right({
			"fileformat",
			fmt = string.upper,
			--[[ 	icons_enabled = false, ]]
			color = { fg = colors.pink, gui = "bold" },
		})

		ins_right({
			"branch",
			icon = "",
			color = { fg = colors.darkblue, gui = "bold" },
		})

		ins_right({
			"diff",
			symbols = { added = "+", modified = "/", removed = "-" },
			diff_color = {
				added = { fg = colors.green },
				modified = { fg = colors.orange },
				removed = { fg = colors.red },
			},
			cond = conditions.hide_in_width,
		})

		--[[ ins_right({
			function()
				return "▊"
			end,
			color = { fg = colors.black },
			padding = { left = 1 },
		}) ]]

		lualine.setup(config)
	end,
}
