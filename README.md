# RE Brainfuck Tunnel - Psiphon Pro Go Version

Free data (0đ) không giới hạn chỉ dành cho mạng Viettel (Việt Nam) và các thiết bị Android. Tuy nhiên, tốc độ và ping không được tốt do giới hạn của gói Psiphon free. Có thể cần dữ liệu để cài đặt các gói ở lần đầu.

## Các yêu cầu

**Download Termux, Termux:Boot và NekoBox**
- [Termux](https://f-droid.org/packages/com.termux/)
- [Termux:Boot](https://f-droid.org/packages/com.termux.boot/)
- [NekoBox](https://github.com/MatsuriDayo/NekoBoxForAndroid/releases)

## Cài đặt Psiphon

**Mở Termux và chạy:**

    pkg install -y curl > /dev/null 2>&1 && curl -s -L https://github.com/piscesCat/Psiphon/raw/khaiphan/install.sh | bash

## CÀI ĐẶT CHO MÁY ĐÃ ROOT

- Nếu điện thoại bạn đã root có thể bỏ qua NekoBox. Sau khi cài đặt Psiphon, làm tiếp các như sau.

**Tải và cài đặt module Magisk/APatch Box For Magisk**

- [BoxForMagisk](https://github.com/taamarin/box_for_magisk/releases)

**Thực hiện các lệnh sau trên Termux lần lượt như sau:**

1. Tải file cấu hình `settings.ini` của BFM:
   ```bash
   curl -o "$(realpath ~)/bfm-settings.ini" https://raw.githubusercontent.com/taamarin/box_for_magisk/master/box/settings.ini
   ```

2. Bỏ qua Psiphon cho WIFI:
   ```bash
   sed -i 's/^ignore_out_list=.*/ignore_out_list=( "wlan+" )/' $(realpath ~)/bfm-settings.ini
   ```

3. Bỏ qua Termux khi chạy VPN:
   ```bash
   sed -i 's/^packages_list=.*/packages_list=( "com.termux" )/' $(realpath ~)/bfm-settings.ini
   ```

4. Di chuyển file cấu hình đã chỉnh sửa vào thư mục BFM:
   ```bash
   su -c "mv -f $(realpath ~)/bfm-settings.ini /data/adb/box/settings.ini && mv -f $(realpath ~)/psiphon/bfm-clash-config.yaml /data/adb/box/clash/config.yaml"
   ```
5. Khởi động Psiphon và restart BFM
   ```bash
   su -c /data/adb/box/scripts/box.service restart && psiphon-tun
   ```

- Bây giờ Psiphon sẽ được chạy ngầm hoàn toàn trên thiết bị của bạn.

- Lưu ý: Nếu cài đặt bị lỗi, vui lòng gỡ bỏ BFM và cài đặt lại module.

## CÀI ĐẶT CHO MÁY CHƯA ROOT VÀ ĐÃ ROOT ĐƠN GIẢN

**Bước 1: Thiết lập NekoBox**

- Settings > Direct DNS: `203.113.131.6` hoặc `203.113.131.1`

![IMG_7431](https://github.com/user-attachments/assets/8b822359-934b-4900-8b96-93a3fc72b2aa)

- Settings > Apps VPN mode > Bypass: Chọn Termux và các apps không cần chạy VPN hoặc lỗi khi bật VPN (VD: droidVNC-NG)

![IMG_7430](https://github.com/user-attachments/assets/0bf1a2be-867b-4bc4-a370-092d237efd66)

- Settings: Bật Auto Connect

![IMG_7429](https://github.com/user-attachments/assets/d3640353-f435-4c80-85bc-c4217e135d6b)

- Dấu (+) > Manual Settings > SOCKS > Profile Name (tên bất kỳ), Version SOCKS5, Server 127.0.0.1, Port 1080

![IMG_7432](https://github.com/user-attachments/assets/d5255011-5ff9-45bd-bd94-d6b9437ebf85)

- Lưu lại, chọn Profile vừa tạo và bấm Connect

    
**Bước 2: Mở Termux và chạy lần đầu**

- Nhập `psiphon-tun` và enter
- Enjoy!

**NOTE:**

- Script này đã kèm cài đặt trên Termux:Boot. Khi bạn khởi động lại máy `psiphon-tun` sẽ tự động khởi động. Ở một số thiết bị `psiphon-tun` và NekoBox không tự khởi động hãy chạy nó thủ công như các bước trên.
- Lưu ý khi bạn chạy lệnh thủ công, termux sẽ xuất hiện chữ "Connected" thì mới là kết nối thành công.

![IMG_7428](https://github.com/user-attachments/assets/f7db9ec9-33e4-4d53-9e3a-10480e7a70af)

- Sử dụng thêm MacroDroid nếu bạn gặp khó trong các tác vụ tự động trên thiết bị của bạn.
- Để huỷ tự khởi động, chạy lệnh `rm ~/.termux/boot/psiphon-tun-auto-boot.sh` và tắt Auto Connect trong app NekoBox.
- Chương trình được lưu trữ tại: `~/psiphon`

![IMG_7435](https://github.com/user-attachments/assets/a3ad2526-970d-497b-b95f-63b0b590b5db)
