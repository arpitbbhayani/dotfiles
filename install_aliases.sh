cp .aliases ~/.aliases
# load it in .bashrc if it's not already loaded
if ! grep -q "source ~/.aliases" ~/.bashrc; then
    echo "source ~/.aliases" >> ~/.bashrc
fi
