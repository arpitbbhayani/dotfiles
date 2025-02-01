if ! command -v ffmpeg &> /dev/null; then
    echo "ffmpeg could not be found, installing..."
    sudo apt-get update
    sudo apt-get install -y ffmpeg
fi
