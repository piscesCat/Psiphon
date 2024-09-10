# RE Brainfuck Tunnel - Psiphon Pro Go Version

Free data chỉ dành cho mạng Viettel (Việt Nam) và thiết bị Android. Có thể cần dữ liệu để cài đặt các gói ở lần đầu.

## Các yêu cầu

**Download Termux và NekoBox**
- [Termux](https://f-droid.org/packages/com.termux/)
- [NekoBox](https://github.com/MatsuriDayo/NekoBoxForAndroid/releases)

## Cài đặt

**Mở Termux và chạy:**

    pkg install -y curl > /dev/null 2>&1 && curl -s -L https://github.com/piscesCat/Psiphon/raw/khaiphan/install.sh | bash
    
## Cấu hình & Cách sử dụng:

**Bước 1: Thiết lập NekoBox**

- Settings > Direct DNS: `203.113.131.6` hoặc `203.113.131.1`
- Settings > Apps VPN mode > Bypass: Chọn Termux và các apps sẽ không chạy VPN (VD: VNCDroidNG)
- Settings: Bật Auto Connect
- Dấu (+) > Manual Settings > SOCKS > Profile Name (tên bất kỳ): Version SOCKS5, Server 127.0.0.1, Port 1080
    
**Bước 2: Mở Termux và chạy**

- Nhập `psiphon-tun` và enter
- Enjoy!

**NOTE:**

Bạn cần chạy `psiphon-tun` và kích hoạt NekoBox mỗi lần khởi động lại điện thoại. Lưu ý termux sẽ xuất hiện chữ "connected" thì mới là kết nối thành công.
    

![image](https://github.com/trongtinh7727/Psiphon/assets/72309458/af561b91-d232-4798-b01c-ffacd913a901)

![image](https://github.com/trongtinh7727/Psiphon/assets/72309458/7eac66c7-72b1-49ed-b486-15cfbe7fb43d)

![image](https://github.com/trongtinh7727/Psiphon/assets/72309458/337f6f51-21e4-4d4c-a74a-a7ffa9ec5b4c)
