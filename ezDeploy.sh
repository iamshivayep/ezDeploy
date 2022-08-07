#!/usr/bin/env bash

if [ "$(id -u)" =0 ]; then
    echo "Do not run this script as root, it will break."
    exit 1
fi



echo "Installing Dialog dependency"
sudo pacman --noconfirm --needed -Syu dialog

welc() { \
    dialog --colors --title "\Z7\ZbDeploying ezDeploy!" --msgbox "\Z4This script will deploy my BSPWM window manager config! i wrote this script for deploying my wm config on any system i install. but you can use it! :)" 16 60

}
welc

befwar() { \
    dialog --colors --title "\Z7\ZbWarning!" --msgbox "\Z4\Warning! This script is in beta and can cause a lot of troubles. if you run this on your main machine, i am not responsible for any damage done!" 16 60
}
befwar

instbspwm() { \
    sudo pacman --noconfirm --needed -S bspwm polybar rofi
}

instbspwm

depbspwm() { \
    echo "Applying BSPWM Configs, Please wait."
    sudo pacman --noconfirm --needed -S git
    git clone https://github.com/iamshivayep/ezDeployrepo
    cp ezDeployrepo/.config/bspwm/ $HOME/.config/
    cp ezDeployrepo/.config/sxhkd/ $HOME/.config/

}

depbspwm

polyconf() { \
    git clone https://github.com/adi1090x/polybar-themes
    dialog --colors --title "\Z7\ZbChoose Polybar Themes" --msgbox "\Z4Choose simple in the popup window that will now appear, select simple for the script to work further!" 16 60
    sh polybar-themes/setup.sh

}
polyconf

ending() { \
    dialog --colors --title "\Z7\ZbCongrats!" --msgbox "\Z4Script has been deployed! reboot system now to get the ezDeploy!"
}

ending

reboot