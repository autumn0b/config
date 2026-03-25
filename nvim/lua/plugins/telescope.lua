-- plugins/telescope.lua:
return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
		{ "nvim-telescope/telescope-ui-select.nvim" },
		{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
	},
	config = function()
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

		-- Enable Telescope extensions
		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")

		local builtin = require("telescope.builtin")

		-- Search all files
		-- vim.keymap.set("n", "<leader>sf", builtin.find_files)

		-- [S]each [F]iles
		vim.keymap.set("n", "<leader>ff", function()
			require("telescope.builtin").find_files({
				hidden = true,
				cwd = "~",
			})
		end)

		-- [S]each [A]ll
		vim.keymap.set("n", "<leader>ff", function()
			require("telescope.builtin").find_files({
				hidden = true,
				cwd = "~/",
			})
		end)
	end
}
