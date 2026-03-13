# ==========
# mini files
# ==========

if [ ! -d "$HOME/.config/nvim/pack/vendor/start/mini_files/" ]; then
	git clone \
		https://github.com/nvim-mini/mini.files \
		$HOME/.config/nvim/pack/vendor/start/mini_files/
else
	git clone \
		https://github.com/nvim-mini/mini.files \
		$HOME/.config/nvim/pack/vendor/start/mini_files/
fi


# ============
# mini tabline
# ============

if [ ! -d "$HOME/.config/nvim/pack/vendor/start/mini_tabline/" ]; then
	git clone \
	https://github.com/nvim-mini/mini.tabline \
	$HOME/.config/nvim/pack/vendor/start/mini_tabline/
else
	git pull \
	https://github.com/nvim-mini/mini.tabline \
	$HOME/.config/nvim/pack/vendor/start/mini_tabline/

fi


# =========
# mini move
# =========

if [ ! -d "$HOME/.config/nvim/pack/vendor/start/mini_move/" ]; then
	git clone \
	https://github.com/nvim-mini/mini.move \
	$HOME/.config/nvim/pack/vendor/start/mini_move/
else
	git pull \
	https://github.com/nvim-mini/mini.move \
	$HOME/.config/nvim/pack/vendor/start/mini_move/

fi


# ===============
# mini statusline
# ===============

if [ ! -d "$HOME/.config/nvim/pack/vendor/start/mini_statusline/" ]; then
	git clone \
	https://github.com/nvim-mini/mini.statusline \
	$HOME/.config/nvim/pack/vendor/start/statusline/
else
	git pull \
	https://github.com/nvim-mini/mini.statusline \
	$HOME/.config/nvim/pack/vendor/start/mini_statusline/

fi
