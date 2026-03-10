sudo pacman -S \
	keyd hyprland waybar rofi wl-clipboard \
	pavucontrol pulseaudio \
	ttf-monofur ttf-jetbrains-mono-nerd \
	\
	ghostty zsh neovim yazi \
	git gcc openssh \
	tealdeer man-db wikiman
	fastfetch unzip less wget fzf ripgrep \
	\
	firefox discord steam \
	reaper surge-xt-vst3 \

# manual install: plugins
#   https://www.powerdrumkit.com/linux.php

mv ~/linux_config/ ~/sync/
rm ~/.bash_history
rm ~/.bash_logout
rm ~/.bash_profile
rm ~/.bashrc

~/sync/linux_config/scripts/loadc.sh

tldr --update
sudo systemctl enable keyd --now
sudo keyd reload

git config --global user.email "nel.malachi@proton.me"
git config --global user.name "autumn0b"
