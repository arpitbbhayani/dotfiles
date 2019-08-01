if [ -f ~/.zshrc ]; then
    cat ./.aliases >> ~/.zshrc
fi

if [ -f ~/.bashrc ]; then
    cat ./.aliases >> ~/.bashrc
fi
