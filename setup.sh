# isntall zsh
sudo apt-get update
sudo apt-get install -y git curl

# install zsh only when not installed
if ! command -v zsh &> /dev/null; then
    sh install_zsh.sh
fi
