# config files
echo "retrieving files:"
mkdir -p ~/.config

curl https://raw.githubusercontent.com/autumn0b/linux_config/refs/heads/main/.zshrc > ~/.zshrc
echo "  zsh"

mkdir -p ~/.config/foot
curl https://github.com/autumn0b/linux_config/blob/main/foot/foot.ini > ~/.config/foot/foot.ini
echo "  foot"

mkdir -p ~/.config/hypr/
curl https://raw.githubusercontent.com/autumn0b/linux_config/refs/heads/main/hypr/appearance.conf > ~/.config/hypr/appearance.conf
curl https://raw.githubusercontent.com/autumn0b/linux_config/refs/heads/main/hypr/background.conf > ~/.config/hypr/background.conf
curl https://raw.githubusercontent.com/autumn0b/linux_config/refs/heads/main/hypr/hyprland.conf > ~/.config/hypr/hyprland.conf
curl https://raw.githubusercontent.com/autumn0b/linux_config/refs/heads/main/hypr/hyprpaper.conf > ~/.config/hypr/hyprpaper.conf
curl https://raw.githubusercontent.com/autumn0b/linux_config/refs/heads/main/hypr/keybinds.conf > ~/.config/hypr/keybinds.conf
echo "  hyprland"

mkdir -p ~/.config/nvim/

cp -r ~/sync/linux_config/nvim/   ~/.config/nvim/
cp -r ~/sync/linux_config/rofi/   ~/.config/rofi/
cp -r ~/sync/linux_config/waybar/ ~/.config/waybar/ 
cp -r ~/sync/linux_config/yazi/   ~/.config/yazi/
cp -r ~/sync/linux_config/zellij/ ~/.config/zellij/

# requires sudo
sudo cp -r ~/sync/linux_config/keyd/ /etc/keyd/

echo "Warning: factorio and reaper config not automatically copied."

mkdir -p ~/sync
