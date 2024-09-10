#!/bin/bash

if ! command -v curl &> /dev/null; then
    echo "Installing curl..."
    pkg install curl -y
fi

if ! command -v tar &> /dev/null; then
    echo "Installing tar..."
    pkg install tar -y
fi

cd /tmp

echo "Downloading Psiphon source..."

curl -L https://github.com/piscesCat/Psiphon/archive/refs/tags/psiphon.tar.gz -o psiphon.tar.gz --progress-bar

mkdir -p ~/psiphon

tar -xzvf psiphon.tar.gz -C ~/psiphon --strip-components=1

chmod a+x ~/psiphon/psiphon-tun
chmod a+x ~/psiphon/psiphon-tunnel-core

rm psiphon.tar.gz

if ! grep -q "alias psiphon-tun=" ~/.bashrc; then
    echo 'alias psiphon-tun="~/psiphon/psiphon-tun"' >> ~/.bashrc
fi

source ~/.bashrc

echo "Installation completed! You can now use the 'psiphon-tun' command to run Psiphon."
