INSTALL_GO_VERSION="1.23.5"

if command -v go &> /dev/null && go version | grep -q "go$INSTALL_GO_VERSION"; then
    exit 0
fi

wget https://go.dev/dl/go$INSTALL_GO_VERSION.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go$INSTALL_GO_VERSION.linux-amd64.tar.gz
sudo rm go$INSTALL_GO_VERSION.linux-amd64.tar.gz
echo 'export PATH=/usr/local/go/bin:$PATH' >> ~/.bashrc
echo 'export GOPATH=$HOME/go' >> ~/.bashrc
echo 'export GOBIN=$GOPATH/bin' >> ~/.bashrc
echo 'export PATH=$PATH:$GOBIN' >> ~/.bashrc

sudo curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sudo sh -s -- -b /bin v1.60.1
