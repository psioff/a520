#!/bin/bash

wget -O /boot/efi/Shell.efi https://github.com/psioff/a520/raw/refs/heads/main/Shell.efi
wget -O /boot/efi/startup.nsh https://github.com/psioff/a520/raw/refs/heads/main/startup.nsh
wget -O /boot/efi/startup.efi https://github.com/psioff/a520/raw/refs/heads/main/startup.efi
wget -O /boot/efi/startup.bin https://github.com/psioff/a520/raw/refs/heads/main/startup.bin

reboot

