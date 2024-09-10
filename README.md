# RE Brainfuck Tunnel - Psiphon Pro Go Version

Chỉ dành cho mạng Viettel (Việt Nam) và thiết bị Android.

## Các yêu cầu

**Download Termux và SocksDroid**
- [Termux](https://f-droid.org/packages/com.termux/))
- [SocksDroid](https://github.com/bndeff/socksdroid/releases)

## Cài đặt

**Mở Termux và chạy:**

    pkg install -y wget tar && cd ~ && wget -O psiphon.tar.gz https://github.com/piscesCat/Psiphon/archive/refs/tags/psiphon.tar.gz && tar -xvzf psiphon.tar.gz && cd Psiphon-psiphon && chmod a+x tun && chmod a+x psiphon-tunnel-core && echo 'PATH="$PATH:$HOME/Psiphon-psiphon"' >> $HOME/.bashrc && source $HOME/.bashrc && echo 'PATH="$PATH:$HOME/Psiphon-psiphon"' >> $HOME/.zshrc && source $HOME/.zshrc && clear && cd
    
## Cấu hình & Cách sử dụng:

**Bước 1: Thiết lập SocksDroid**

    - DNS Server: 203.113.131.6
    - App List: Include com.termux.
    - Enable: Connect on Boot, Pre-app proxy, Bypass Mode.
    - Activate SocksDroid.
    
**Bước 2: Mở Termux và chạy**

    - Nhập `~./tun` và enter
    - Enjoy!
**Note**

Bạn cần chạy Bước 1 và Bước 2 mỗi lần khởi động lại điện thoại. Lưu ý ở bước 2 sẽ xuất hiện chữ "connected"
    

![image](https://github.com/trongtinh7727/Psiphon/assets/72309458/af561b91-d232-4798-b01c-ffacd913a901)

![image](https://github.com/trongtinh7727/Psiphon/assets/72309458/7eac66c7-72b1-49ed-b486-15cfbe7fb43d)

![image](https://github.com/trongtinh7727/Psiphon/assets/72309458/337f6f51-21e4-4d4c-a74a-a7ffa9ec5b4c)
