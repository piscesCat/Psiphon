# RE Brainfuck Tunnel - Psiphon Pro Go Version

## Các yêu cầu

**Android:**

Download Termux và SocksDroid [Ở đây](https://trongtinh7727-my.sharepoint.com/:f:/g/personal/tinhne_trongtinh7727_onmicrosoft_com/EhA2kJ7nk9BLiStnHO8fXNYBgniadOd-FrHQuvWm1vML2g?e=ZKIhxM "Link download")

    - Termux
    - SocksDroid

## Cài đặt

**Mở termux và chạy:**

    pkg install -y wget tar && wget -O psiphon.tar.gz https://github.com/piscesCat/Psiphon/archive/refs/tags/psiphon.tar.gz && tar -xvzf psiphon.tar.gz && cd Psiphon-psiphon && chmod a+x tun && chmod a+x psiphon-tunnel-core && echo 'PATH="$PATH:$HOME/Psiphon-psiphon"' >> $HOME/.bashrc && source $HOME/.bashrc && echo 'PATH="$PATH:$HOME/Psiphon-psiphon"' >> $HOME/.zshrc && source $HOME/.zshrc && clear && cd
    
## Cấu hình & Cách sử dụng:

**Bước 1: Thiết lập SocksDroid:**
    - DNS Server: 203.113.131.6
    - App List: Include com.termux.
    - Enable: Connect on Boot, Pre-app proxy, Bypass Mode.
    - Activate SocksDroid.
    
**Step2 Termux:**
    - Nhập `./tun` và enter
    - Enjoy!
    

![image](https://github.com/trongtinh7727/Psiphon/assets/72309458/af561b91-d232-4798-b01c-ffacd913a901)

![image](https://github.com/trongtinh7727/Psiphon/assets/72309458/7eac66c7-72b1-49ed-b486-15cfbe7fb43d)

![image](https://github.com/trongtinh7727/Psiphon/assets/72309458/337f6f51-21e4-4d4c-a74a-a7ffa9ec5b4c)
