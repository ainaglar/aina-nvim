return {
	{
		"folke/tokyonight.nvim",
		config = function()
			vim.cmd [[colorscheme tokyonight]]
			--设置背景透明
			vim.cmd [[highlight Normal ctermbg=none guibg=none]]
		end
	},
	{
		'goolord/alpha-nvim',
		config = function()
			require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
			local dashboard = require("alpha.themes.dashboard")
			dashboard.section.header.val = {
				"   ▄████████  ▄█  ███▄▄▄▄      ▄████████    ▄██████▄   ▄█          ▄████████    ▄████████ ",
				"  ███    ███ ███  ███▀▀▀██▄   ███    ███   ███    ███ ███         ███    ███   ███    ███ ",
				"  ███    ███ ███▌ ███   ███   ███    ███   ███    █▀  ███         ███    ███   ███    ███ ",
				"  ███    ███ ███▌ ███   ███   ███    ███  ▄███        ███         ███    ███  ▄███▄▄▄▄██▀ ",
				"▀███████████ ███▌ ███   ███ ▀███████████ ▀▀███ ████▄  ███       ▀███████████ ▀▀███▀▀▀▀▀   ",
				"  ███    ███ ███  ███   ███   ███    ███   ███    ███ ███         ███    ███ ▀███████████ ",
				"  ███    ███ ███  ███   ███   ███    ███   ███    ███ ███▌    ▄   ███    ███   ███    ███ ",
				"  ███    █▀  █▀    ▀█   █▀    ███    █▀    ████████▀  █████▄▄██   ███    █▀    ███    ███ ",
				"                                                      ▀                        ███    ███ ",


			}
			dashboard.section.buttons.val = {
				dashboard.button("f", " " .. " Find file", "<cmd> Telescope find_files <cr>"),
				dashboard.button("n", " " .. " New file", "<cmd> ene <BAR> startinsert <cr>"),
				dashboard.button("r", " " .. " Recent files", "<cmd> Telescope oldfiles <cr>"),
				dashboard.button("s", " " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
				dashboard.button("l", "󰒲 " .. " Lazy", "<cmd> Lazy <cr>"),
				dashboard.button("q", " " .. " Quit", "<cmd> qa <cr>"),
			}
		end

	},
	{
		"xiyaowong/nvim-transparent",
		config = function()
			require("transparent").setup({ -- Optional, you don't have to run setup.
				groups = {        -- table: default groups
					'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
					'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
					'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
					'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
					'EndOfBuffer',
				},
				extra_groups = {}, -- table: additional groups that should be cleared
				exclude_groups = {}, -- table: groups you don't want to clear
			})
			require('transparent').clear_prefix('NeoTree')
		end,
	}
}
