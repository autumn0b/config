# config files
echo "copying config files:"
cp ~/.zshrc                       ~/sync/linux_config/
echo "  zsh"
cp -r ~/.config/foot/             ~/sync/linux_config/
echo "  foot"
cp -r ~/.config/hypr/             ~/sync/linux_config/
echo "  hypr"
cp -r ~/.config/nvim/             ~/sync/linux_config/
echo "  nvim"
cp -r ~/.config/rofi/             ~/sync/linux_config/
echo "  rofi"
cp -r ~/.config/waybar/           ~/sync/linux_config/
echo "  waybar"
cp -r ~/.config/yazi/             ~/sync/linux_config/
echo "  yazi"
cp -r ~/.config/zellij/           ~/sync/linux_config/
echo "  zellij"

# other
mkdir -p ~/sync/linux_config/factorio/
cp ~/.factorio/config/config.ini  ~/sync/linux_config/factorio/
echo "  factorio"
cp ~/.config/REAPER/reaper-kb.ini ~/sync/linux_config/
echo "  reaper"

# requires sudo
sudo cp -r /etc/keyd/                 ~/sync/linux_config/
echo "  keyd"
sudo cp -r /etc/nixos/                ~/sync/linux_config/
echo "  nixos"

echo "complete"
