# config files
echo "copying config files:"

cp ~/.zshrc                       ~/sync/linux_config/
echo "  zsh"

if [ -d "~/sync/linux_config/foot/" ]; then
	rm -r ~/sync/linux_config/foot/
fi
cp -r ~/.config/foot/             ~/sync/linux_config/
echo "  foot"

if [ -d "~/sync/linux_config/hypr/" ]; then
	rm -r ~/sync/linux_config/hypr/
fi
cp -r ~/.config/hypr/             ~/sync/linux_config/
echo "  hypr"

if [ -d " ~/sync/linux_config/nvim/" ]; then
	rm -r ~/sync/linux_config/nvim/
fi
cp -r ~/.config/nvim/             ~/sync/linux_config/nvim/
echo "  nvim"

if [ -d " ~/sync/linux_config/rofi/" ]; then
	rm -r ~/sync/linux_config/rofi/
fi
cp -r ~/.config/rofi/             ~/sync/linux_config/
echo "  rofi"

if [ -d " ~/sync/linux_config/waybar/" ]; then
	rm -r ~/sync/linux_config/waybar/
fi
cp -r ~/.config/waybar/           ~/sync/linux_config/
echo "  waybar"

if [ -d " ~/sync/linux_config/yazi/" ]; then
	rm -r ~/sync/linux_config/yazi/
fi
cp -r ~/.config/yazi/             ~/sync/linux_config/
echo "  yazi"

if [ -d " ~/sync/linux_config/zellij/" ]; then
	rm -r ~/sync/linux_config/zellij/
fi
cp -r ~/.config/zellij/           ~/sync/linux_config/
echo "  zellij"


# other
if [ -d " ~/sync/linux_config/factorio/" ]; then
	rm -r ~/sync/linux_config/factorio/
fi
mkdir -p ~/sync/linux_config/factorio/
cp ~/.factorio/config/config.ini  ~/sync/linux_config/factorio/
echo "  factorio"

cp ~/.config/REAPER/reaper-kb.ini ~/sync/linux_config/
echo "  reaper"

# requires sudo
if [ -d " ~/sync/linux_config/keyd/" ]; then
	sudo rm -rf ~/sync/linux_config/keyd/
fi
cp -r /etc/keyd/                 ~/sync/linux_config/
echo "  keyd"

if [ -d "/etc/nixos/" ]; then
	sudo cp -r /etc/nixos/configuration.nix ~/sync/linux_config/
	echo "  nixos"
fi

echo "complete"
