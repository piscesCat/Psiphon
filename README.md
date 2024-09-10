# RE Brainfuck Tunnel - Psiphon Pro Go Version

Free data chỉ dành cho mạng Viettel (Việt Nam) và các thiết bị Android. Tuy nhiên, tốc độ và ping không được tốt do giới hạn của gói Psiphon free. Có thể cần dữ liệu để cài đặt các gói ở lần đầu.

## Các yêu cầu

**Download Termux, Termux:Boot và NekoBox**
- [Termux](https://f-droid.org/packages/com.termux/)
- [Termux:Boot](https://f-droid.org/packages/com.termux.boot/)
- [NekoBox](https://github.com/MatsuriDayo/NekoBoxForAndroid/releases)

## Cài đặt

**Mở Termux và chạy:**

    pkg install -y curl > /dev/null 2>&1 && curl -s -L https://github.com/piscesCat/Psiphon/raw/khaiphan/install.sh | bash
    
## Cấu hình & Cách sử dụng:

**Bước 1: Thiết lập NekoBox**

- Settings > Direct DNS: `203.113.131.6` hoặc `203.113.131.1`
![IMG_7431](https://github.com/user-attachments/assets/8b822359-934b-4900-8b96-93a3fc72b2aa)
- Settings > Apps VPN mode > Bypass: Chọn Termux và các apps sẽ không chạy VPN (VD: VNCDroidNG)
![IMG_7430](https://github.com/user-attachments/assets/0bf1a2be-867b-4bc4-a370-092d237efd66)
- Settings: Bật Auto Connect
![IMG_7429](https://github.com/user-attachments/assets/d3640353-f435-4c80-85bc-c4217e135d6b)
- Dấu (+) > Manual Settings > SOCKS > Profile Name (tên bất kỳ): Version SOCKS5, Server 127.0.0.1, Port 1080
    
**Bước 2: Mở Termux và chạy lần đầu**

- Nhập `psiphon-tun` và enter
- Enjoy!

**NOTE:**

Script này đã kèm cài đặt trên Termux:Boot. Khi bạn khởi động lại máy `psiphon-tun` sẽ tự động khởi động. Nếu `psiphon-tun` và NekoBox không tự khởi động hãy chạy nó thủ công. Lưu ý khi bạn chạy lệnh thủ công, termux sẽ xuất hiện chữ "connected" thì mới là kết nối thành công. Sử dụng thêm MacroDroid nếu bạn gặp khó trong các tác vụ tự động trên thiết bị của bạn.
![IMG_7428](https://github.com/user-attachments/assets/f7db9ec9-33e4-4d53-9e3a-10480e7a70af)
