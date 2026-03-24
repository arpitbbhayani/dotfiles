curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

if ! grep -q "/opt/nvim-linux-x86_64/bin" ~/.bashrc; then
  echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >>~/.bashrc
fi

git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git nvim-linux-x86_64.tar.gz
