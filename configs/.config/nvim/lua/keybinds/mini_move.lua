require('mini.move').setup
{
	-- Use an empty string to disable a setting.
	mappings = {
		-- Move selection in Visual mode.
		left = "<Left>",
		right = "<Right>",
		down = "<Down>",
		up = "<Up>",

		-- Move current line in Normal mode
		line_left = "<Left>",
		line_right = "<Right>",
		line_down = "<Down>",
		line_up = "<Up>"
	},

	-- Moving behavior options.
	options = {
		-- Reindent selection during vertical move
		reindent_linewise = true,
	}
}
