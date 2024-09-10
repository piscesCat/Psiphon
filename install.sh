#!/data/data/com.termux/files/usr/bin/sh

if ! command -v tar &> /dev/null; then
    pkg install tar -y
fi

cd ~

echo "Downloading Psiphon source..."

curl -s -L https://github.com/piscesCat/Psiphon/archive/refs/tags/viettel-free-data.tar.gz -o viettel-free-data.tar.gz > /dev/null 2>&1

echo "Extracting files..."

rm -rf ~/psiphon

mkdir -p ~/psiphon

tar -xzvf viettel-free-data.tar.gz -C ~/psiphon --strip-components=1 > /dev/null 2>&1

chmod a+x ~/psiphon/psiphon-tun
chmod a+x ~/psiphon/psiphon-tun-auto-start.sh
chmod a+x ~/psiphon/psiphon-tunnel-core

mkdir -p ~/.termux/boot/
mkdir -p ~/.termux/tasker/

cp -f ~/psiphon/psiphon-tun-auto-start.sh ~/.termux/boot/
cp -f ~/psiphon/psiphon-tun-auto-start.sh ~/.termux/tasker/

rm viettel-free-data.tar.gz

if ! grep -q "alias psiphon-tun=" ~/.bashrc; then
    echo 'alias psiphon-tun="~/psiphon/psiphon-tun"' >> ~/.bashrc
fi

source ~/.bashrc

echo "Installation completed! You can now use the 'psiphon-tun' command to run Psiphon."
