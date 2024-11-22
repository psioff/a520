#!/bin/bash

# fw update prepairing, after reboot you should bios enter and select "remote firmware update" to finish
wget -O /boot/efi/Shell.efi https://github.com/psioff/a520/raw/refs/heads/main/Shell.efi
wget -O /boot/efi/startup.nsh https://github.com/psioff/a520/raw/refs/heads/main/startup.nsh
wget -O /boot/efi/startup.efi https://github.com/psioff/a520/raw/refs/heads/main/startup.efi
wget -O /boot/efi/startup.bin https://github.com/psioff/a520/raw/refs/heads/main/startup.bin

# variable related utils
wget -O /usr/local/bin/cbs https://github.com/psioff/a520/raw/refs/heads/main/cbs
wget -O /usr/local/bin/fan https://github.com/psioff/a520/raw/refs/heads/main/fan
wget -O /usr/local/bin/pbs https://github.com/psioff/a520/raw/refs/heads/main/pbs
wget -O /usr/local/bin/rtc https://github.com/psioff/a520/raw/refs/heads/main/rtc
wget -O /usr/local/bin/usb https://github.com/psioff/a520/raw/refs/heads/main/usb
wget -O /usr/local/bin/pswd https://github.com/psioff/a520/raw/refs/heads/main/pswd
chmod +x /usr/local/bin/*

reboot

