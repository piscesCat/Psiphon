#!/data/data/com.termux/files/usr/bin/sh

TERMUX_USER_PATH=$(realpath ~)

curl -sL -o "$TERMUX_USER_PATH/bfm-settings.ini" https://raw.githubusercontent.com/taamarin/box_for_magisk/master/box/settings.ini
su -c "mv -f $TERMUX_USER_PATH/bfm-settings.ini /data/adb/box/settings.ini"

su -c "sed -i 's/^ignore_out_list=.*/ignore_out_list=( \"wlan+\" )/' /data/adb/box/settings.ini"
su -c "sed -i 's/^packages_list=.*/packages_list=( \"com.termux\" )/' /data/adb/box/settings.ini"

curl -sL -o "$TERMUX_USER_PATH/bfm-clash-config.yaml" https://github.com/piscesCat/Psiphon/raw/khaiphan/bfm-clash-config.yaml
su -c "mv -f $TERMUX_USER_PATH/bfm-clash-config.yaml /data/adb/box/clash/config.yaml"
su -c "/data/adb/box/scripts/box.service restart"

echo "BFM config is installed."
