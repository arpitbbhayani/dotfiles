if command -v gcc &> /dev/null; then
    exit 0
fi

sudo apt-get install -y gcc g++
