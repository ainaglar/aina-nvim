return {
	{
		"rhysd/accelerated-jk", --加速jk
		config = function()
			vim.keymap.set("n", "j", "<Plug>(accelerated_jk_gj)")
			vim.keymap.set("n", "k", "<Plug>(accelerated_jk_gk)")
		end,
	},
	{
		"folke/persistence.nvim", --恢复上次退出时的窗口布局
		config = function()
			require("persistence").setup()
			vim.keymap.set("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]])
			vim.keymap.set("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true})<cr>]])
			vim.keymap.set("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]])
		end
	},
	{
		"RRethy/vim-illuminate", --高亮光标下的变量
		config = function()
			require('illuminate').configure()
		end
	},
	{
		"folke/which-key.nvim",
		config = true,
	},
	{
		"folke/flash.nvim",
		config = function()
			require("flash").setup()
			vim.keymap.set({ "n", "x", "o" }, "s",
				function()
					require("flash").jump({
						search = {
							mode = function(str)
								return "\\<" .. str
							end,
						},
					})
				end
			)
			vim.keymap.set({ "n", "x", "o" }, "S",
				function()
					require("flash").treesitter()
				end
			)
			vim.keymap.set({ "o" }, "r",
				function()
					require("flash").remote()
				end
			)
			vim.keymap.set({ "o", "x" }, "R",
				function()
					require("flash").treesitter_search()
				end
			)
		end,
	},
	{
		"s1n7ax/nvim-window-picker",
		config = function()
			require("window-picker").setup({
				filter_rules = {
					include_current_win = true,
					bo = {
						filetype = { "fidget" }
					}
				}
			})
			vim.keymap.set("n",
				"<leader>p",
				function()
					local window_number = require('window-picker').pick_window()
					if window_number then vim.api.nvim_set_current_win(window_number) end
				end
			)
		end
	},
	{
		"echasnovski/mini.comment",
		config = true,
	},
}
