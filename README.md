# ezDeploy
ezDeploy script deploys my  window manager and polybar configs in 2 clicks!

# What the functions inside the script do.

# welc() function
`welc()` function welcomes the user, it uses the `dialog` dependency of `ezDeploy` to create a window.

# befwar() function
`befwar()` function warns the user before installation that the `script` can break the `system`

# instbspwm() function
`instbspwm()` function installs the bspwm window manager and its required dependencies (`rofi` `polybar`) that need to make my config work properly

# depbspwm() function
`depbspwm()` function clones the [ezDeployrepo](https://github.com/iamshivayep/ezDeployrepo) which has my sxhkd configs and bspwm configs, the function then copies these over to the user's homefolder/.config/

# polyconf() function
`polyconf()` function clones the [polybar themes repo which i use](https://github.com/adi1090x/polybar-themes) (thanks adi!) and installs them, but here some user input is required, you need to select the `1. Simple` option in the popup menu, else the script will fail or the configuration for it will break (ps: this is the thing which caused most trouble in the script but i patched it!)

# ENDING
there is no `ending` function, it just ends, you have to reboot your system after it exits, though.

# CONTRIBUTION
contributions are very welcomed! just edit the ezDeploy.sh file and make a pull request, i will request it!,

# LICENSE
this program is licensed under the GPL license, which is free and open source license!

# EXPERIMENTAL FEATURES!
The experimental dwm feature has sadly been removed. but a new feature has been added, this is not really a feature, its just a clean way of keeping things in place, being more organized, i have made a separate `packs.ezdepl` file which is read by pacman and it has package names inside it, which pacman will then install on the system, i think this is a much more simpler way of keeping all packages in the same place!
