#!/bin/bash

if ! command -v tar &> /dev/null; then
    pkg install tar -y
fi

if ! command -v curl &> /dev/null; then
    pkg install curl -y
fi

cd ~

echo "Downloading Psiphon source..."

curl -L https://github.com/piscesCat/Psiphon/archive/refs/tags/freedata.tar.gz -o freedata.tar.gz --progress-bar

mkdir -p ~/psiphon

tar -xzvf freedata.tar.gz -C ~/psiphon --strip-components=1

chmod a+x ~/psiphon/psiphon-tun
chmod a+x ~/psiphon/psiphon-tunnel-core

rm freedata.tar.gz

if ! grep -q "alias psiphon-tun=" ~/.bashrc; then
    echo 'alias psiphon-tun="~/psiphon/psiphon-tun"' >> ~/.bashrc
fi

source ~/.bashrc

echo "Installation completed! You can now use the 'psiphon-tun' command to run Psiphon."
