# RE Brainfuck Tunnel - Psiphon Pro Go Version

Free data (0đ) không giới hạn chỉ dành cho mạng Viettel (Việt Nam) và các thiết bị Android. Tuy nhiên, tốc độ và ping không được tốt do giới hạn của gói Psiphon free. Cần dữ liệu để cài đặt các gói ở lần đầu.

## Cài đặt Psiphon

**Download Termux**
- [Termux](https://f-droid.org/packages/com.termux/)

**Mở Termux và chạy:**

    pkg install -y curl screen > /dev/null 2>&1 && curl -s -L https://github.com/piscesCat/Psiphon/raw/khaiphan/install.sh | bash

**Khởi chạy thủ công:**

    psiphon-tun

**Khởi chạy tự động:**

- Xem phía dưới.

## SỬ DỤNG CHO MÁY ĐÃ ROOT

- Nếu điện thoại bạn đã root thì có thể chạy ngầm VPN và chia sẻ VPN qua hotspot, terthring, ethernet mà không cần app VPN như NekoBox như sau.

**Tải và cài đặt module Magisk/APatch Box For Magisk**

- [BoxForMagisk](https://github.com/taamarin/box_for_magisk/releases)

**Thực hiện các lệnh sau trên Termux lần lượt như sau:**

1. Tải file cấu hình `settings.ini` của BFM:
   ```bash
   curl -o "$(realpath ~)/bfm-settings.ini" https://raw.githubusercontent.com/taamarin/box_for_magisk/master/box/settings.ini
   ```

2. Bỏ qua Psiphon nếu đang dùng WIFI:
   ```bash
   sed -i 's/^ignore_out_list=.*/ignore_out_list=( "wlan+" )/' $(realpath ~)/bfm-settings.ini
   ```

3. Bỏ qua Termux khi chạy VPN:
   ```bash
   sed -i 's/^packages_list=.*/packages_list=( "com.termux" )/' $(realpath ~)/bfm-settings.ini
   ```

4. Di chuyển file cấu hình vào thư mục BFM:
   ```bash
   su -c "mv -f $(realpath ~)/bfm-settings.ini /data/adb/box/settings.ini && mv -f $(realpath ~)/psiphon/bfm-clash-config.yaml /data/adb/box/clash/config.yaml"
   ```
5. Khởi động lại BFM
   ```bash
   su -c /data/adb/box/scripts/box.service restart
   ```

- Bây giờ Psiphon sẽ được chạy ngầm hoàn toàn trên thiết bị của bạn.

- Lưu ý: Nếu cài đặt bị lỗi, vui lòng gỡ bỏ BFM và cài đặt lại module.

## SỬ DỤNG CHO CẢ MÁY CHƯA ROOT VÀ ĐÃ ROOT ĐƠN GIẢN

**Tải và cài đặt NekoBox**

- [NekoBox](https://github.com/MatsuriDayo/NekoBoxForAndroid/releases)

**Thiết lập NekoBox**

- Settings > Direct DNS: `203.113.131.6` hoặc `203.113.131.1`

![IMG_7431](https://github.com/user-attachments/assets/8b822359-934b-4900-8b96-93a3fc72b2aa)

- Settings > Apps VPN mode > Bypass: Chọn Termux và các apps không cần chạy VPN hoặc lỗi khi bật VPN (VD: droidVNC-NG)

![IMG_7430](https://github.com/user-attachments/assets/0bf1a2be-867b-4bc4-a370-092d237efd66)

- Settings: Bật Auto Connect

![IMG_7429](https://github.com/user-attachments/assets/d3640353-f435-4c80-85bc-c4217e135d6b)

- Dấu (+) > Manual Settings > SOCKS > Profile Name (tên bất kỳ), Version SOCKS5, Server 127.0.0.1, Port 1080

![IMG_7432](https://github.com/user-attachments/assets/d5255011-5ff9-45bd-bd94-d6b9437ebf85)

- Lưu lại, chọn Profile vừa tạo và bấm Connect

## CHẠY PSIPHON TỰ ĐỘNG KHI KHỞI ĐỘNG THIẾT BỊ

- Thay vì phải chạy lệnh thủ công để khởi chạy Psiphon, bạn có thể dùng cách sau

**Tải và cài đặt Termux:Tasker và MacroDroid

- [Termux:Tasker](https://f-droid.org/packages/com.termux.tasker/)
- [MacroDroid](https://www.mediafire.com/file/b2g5zyoemgzslh3/MacroDroid_v5.47.10-gocmod.com.apk/file)
- [Macro Tự Khởi Chạy](https://github.com/piscesCat/Psiphon/releases/download/viettel-free-data/Auto_Start_Psiphon.macro)

**Các bước tiến hành:**

- Cấp quyền MacroDroid
    su -c pm grant com.arlosoft.macrodroid com.termux.permission.RUN_COMMAND

- Nhập macro tự khởi chạy vào MacroDroid trong phần Nhập/Xuất trong app.

- Bật công tắc macro để macro có hiệu lực

**NOTE:**

- Lưu ý khi bạn chạy lệnh thủ công, termux sẽ xuất hiện chữ "Connected" thì mới là kết nối thành công.

![IMG_7428](https://github.com/user-attachments/assets/f7db9ec9-33e4-4d53-9e3a-10480e7a70af)

- Để huỷ tự khởi động, tắt công tắc macro Auto Start Psiphon trong app MacroDroid, tắt Auto Connect trong app NekoBox / Tắt module BFM trong Magisk/APatch
- Chương trình được lưu trữ tại: `~/psiphon`

![IMG_7435](https://github.com/user-attachments/assets/a3ad2526-970d-497b-b95f-63b0b590b5db)
