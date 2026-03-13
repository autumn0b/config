vim.keymap.set("n", "<leader>d", function()
  if not MiniFiles.close() then MiniFiles.open(vim.api.nvim_buf_get_name(0), true) end
end)

require('mini.files').setup
{
	mappings = {
		close       = '',
		go_in       = 'l',
		go_in_plus  = 'l',
		go_out      = 'h',
		go_out_plus = '',
		mark_goto   = '',
		mark_set    = '',
		reset       = '',
		reveal_cwd  = '',
		show_help   = '',
		synchronize = '=',
		trim_left   = 'H',
		trim_right  = 'L',
	},
}
