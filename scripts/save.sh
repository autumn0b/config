sync_dot_config="$HOME/sync/linux_config/configs/.config"
sync_configs="$HOME/sync/linux_config/configs"


# config files
printf "copying config files:\n"

# zsh
cp ~/.zshrc                       $sync_configs/
printf "  zsh cp\n\n"


# foot
if [ -d "$sync_dot_config/foot/" ]; then
	rm -r $sync_dot_config/foot/
	printf "  foot rm\n"
fi
cp -r ~/.config/foot/             $sync_dot_config/
printf "  foot cp\n\n"


# ghostty
if [ -d "$sync_dot_config/ghostty/" ]; then
	rm -r $sync_dot_config/ghostty/
	printf "  ghostty rm\n"
fi
cp -r ~/.config/ghostty/             $sync_dot_config/
printf "  ghostty cp\n\n"


# hypr
if [ -d "$sync_dot_config/hypr/" ]; then
	rm -r $sync_dot_config/hypr/
	printf "  hypr rm\n"
fi
cp -r ~/.config/hypr/             $sync_dot_config/
printf "  hypr cp\n\n"


# nvim
if [ -d "$sync_dot_config/nvim/" ]; then
	rm -r $sync_dot_config/nvim/
	printf "  nvim rm\n"
fi
cp -r ~/.config/nvim/             $sync_dot_config/
printf "  nvim cp\n\n"


# rofi
if [ -d "$sync_dot_config/rofi/" ]; then
	rm -r $sync_dot_config/rofi/
	printf "  rofi rm\n"
fi
cp -r ~/.config/rofi/             $sync_dot_config/
printf "  rofi cp\n\n"


# waybar
if [ -d "$sync_dot_config/waybar/" ]; then
	rm -r $sync_dot_config/waybar/
	printf "  waybar rm\n"
fi
cp -r ~/.config/waybar/           $sync_dot_config/
printf "  waybar cp\n\n"


# yazi
if [ -d "$sync_dot_config/yazi/" ]; then
	rm -r $sync_dot_config/yazi/
	printf "  yazi rm\n"
fi
cp -r ~/.config/yazi/             $sync_dot_config/
printf "  yazi cp\n\n"


# zellij
if [ -d "$sync_dot_config/zellij/" ]; then
	rm -r $sync_dot_config/zellij/
	printf "  zellij rm\n"
fi
cp -r ~/.config/zellij/           $sync_dot_config/
printf "  zellij cp\n\n"


# factorio
if [[ -d "$sync_configs/factorio/" && -d "$HOME/.factorio" ]]; then
	rm -r $sync_configs/factorio/
	printf "  factorio rm\n"
fi
if [ -d "$HOME/.factorio/" ]; then
	mkdir -p $sync_configs/factorio/
	cp $HOME/.factorio/config/config.ini  $sync_configs/factorio/
	printf "  factorio cp\n\n"
fi


# reaper
cp $HOME/.config/REAPER/reaper-kb.ini $sync_configs/
printf "  reaper cp\n\n"


# keyd
if [ -d "$sync_configs/keyd/" ]; then
	sudo rm -rf $sync_configs/keyd/
	printf "  keyd rm\n"
fi
cp -r /etc/keyd/                 $sync_configs/
printf "  keyd cp\n\n"


# nixos
if [ -d "/etc/nixos/" ]; then
	sudo cp -r /etc/nixos/configuration.nix $sync_configs/
	printf "  nixos cp\n\n"
fi

printf "complete\n"
