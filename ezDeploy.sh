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
    sudo pacman --noconfirm --needed -S bspwm polybar rofi sxhkd alacritty nitrogen
}

instbspwm

depbspwm() { \
    echo "Applying BSPWM Configs, Please wait."
    sudo pacman --noconfirm --needed -S git
    git clone https://github.com/iamshivayep/ezDeployrepo
    cp -r ezDeployrepo/.config/bspwm/ $HOME/.config/
    cp -r ezDeployrepo/.config/sxhkd/ $HOME/.config/

}

depbspwm

polyconf() { \
    git clone https://github.com/adi1090x/polybar-themes ~/
    cd ~/polybar-themes
    ./setup.sh

}
polyconf
# Testing features! (dwm)
getdwm() { \
    dialog --colors --title "\Z7\ZbInstalling DWM window manager (experimental!)" --msgbox "\Z4script will now install an experimental feature which is still being tested, dwm is about to be installed. this may break things, but you have been warned about this beforehand!" 16 60
    echo "cloning dwm from github.com/iamshivayep/Catppuccin-Dwm"
    git clone https://github.com/iamshivayep/Catppuccin-Dwm ~/dwm
    cd ~/dwm
    sudo pacman -S base-devel libx11
    sudo make install

}

getdmenu() { \ 
    git clone https://git.suckless.org/dwm ~/
    cd ~/dwm
    sudo make install
}

getdwm
getdmenu

ending() { \
    dialog --colors --title "\Z7\ZbCongrats!" --msgbox "\Z4Script has been deployed! reboot system now to get the ezDeploy!" 16 60

}




