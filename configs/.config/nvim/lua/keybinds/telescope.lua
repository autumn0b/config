require("telescope").setup({
	-- defaults {},
	pickers = {
		find_files = require("telescope.themes").get_dropdown({
			borderchars = {
				{ "─", "│", "─", "│", "┌", "┐", "┘", "└" },
				prompt = { "─", "│", " ", "│", "┌", "┐", "│", "│" },
				results = { "─", "│", "─", "│", "├", "┤", "┘", "└" },
				preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
			},
			width = 0.8,
			previewer = false,
			prompt_title = false,
		}),
	},
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown(),
		}
	}
})
-- vim.keymap.set("n", "<leader>f", <cmd>Telescope find_files<cr>)
-- require("plenary").setup()
