#!/data/data/com.termux/files/usr/bin/sh

curl -o ~/bfm-settings.ini https://raw.githubusercontent.com/taamarin/box_for_magisk/master/box/settings.ini
su -c "mv ~/bfm-settings.ini /data/adb/box/settings.ini"
su -c "sed -i 's/^ignore_out_list=.*/ignore_out_list=( \"wlan+\" )/' /data/adb/box/settings.ini"
su -c "sed -i 's/^packages_list=.*/packages_list=( \"com.termux\" )/' /data/adb/box/settings.ini"
curl -o ~/bfm-clash-config.yaml https://github.com/piscesCat/Psiphon/raw/khaiphan/bfm-clash-config.yaml
su -c "mv ~/bfm-clash-config.yaml /data/adb/box/clash/config.yaml"
su -c "/data/adb/box/scripts/box.service restart"
echo "Install for BFM successfully"
