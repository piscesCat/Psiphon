#!/data/data/com.termux/files/usr/bin/sh
termux-wake-lock
echo "Running script at boot..."
screen -dmS psiphon bash -c '~/psiphon/psiphon-tun'
termux-wake-unlock
