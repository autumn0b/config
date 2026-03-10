printf "{ nix } config file(s) are not automatically copied\n"
mkdir -p   $HOME/sync/
cp -r      $HOME/sync/linux_config/configs/.config/      $HOME/
cp         $HOME/sync/linux_config/configs/.zshrc        $HOME/.zshrc
mkdir -p   $HOME/.config/REAPER/
cp         $HOME/sync/linux_config/configs/reaper-kb.ini $HOME/.config/REAPER/reaper-kb.ini
sudo cp -r $HOME/sync/linux_config/configs/keyd/         /etc/
