# isntall zsh
sudo apt-get update
sudo apt-get install -y git curl

if hostnamectl | grep -q "speedster"; then
    sudo hostnamectl set-hostname speedster
fi

# install zsh only when not installed
if ! command -v zsh &> /dev/null; then
    sh install_zsh.sh
fi
