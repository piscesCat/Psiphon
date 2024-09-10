#!/bin/bash

if ! command -v tar &> /dev/null; then
    pkg install tar -y
fi

cd ~

echo "Downloading Psiphon source..."

curl -s -L https://github.com/piscesCat/Psiphon/archive/refs/tags/free-data-viettel.tar.gz -o free-data-viettel.tar.gz > /dev/null 2>&1

echo "Extracting files..."

rm -rf ~/psiphon

mkdir -p ~/psiphon

tar -xzvf free-data-viettel.tar.gz -C ~/psiphon --strip-components=1 > /dev/null 2>&1

chmod a+x ~/psiphon/psiphon-tun
chmod a+x ~/psiphon/psiphon-tun-auto-boot.sh
chmod a+x ~/psiphon/psiphon-tunnel-core

mkdir -p ~/.termux/boot/

cp -f ~/psiphon/psiphon-tun-auto-boot.sh ~/.termux/boot/

rm free-data-viettel.tar.gz

if ! grep -q "alias psiphon-tun=" ~/.bashrc; then
    echo 'alias psiphon-tun="~/psiphon/psiphon-tun"' >> ~/.bashrc
fi

source ~/.bashrc

echo "Installation completed! You can now use the 'psiphon-tun' command to run Psiphon."
