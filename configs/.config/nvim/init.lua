vim.g.mapleader = " "
vim.g.maplocalleader = " "

require('keybinds.general')

-- require("keybinds.mini_ai")
require('keybinds.mini_files')
require('keybinds.mini_tabline')

require('keybinds.mini_move')
local statusline = require("mini.statusline")
statusline.setup({ use_icons = vim.g.have_nerd_font })
require("nvim-autopairs").setup()

require('keybinds.telescope')


-- setup telescope; run keybind "Telescope find_files"
