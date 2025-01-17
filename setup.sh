# isntall zsh
sudo apt-get update
sudo apt-get install -y git curl

if hostnamectl | grep -q "speedster"; then
    sudo hostnamectl set-hostname speedster
fi

sh install_zsh.sh
sh install_go.sh
