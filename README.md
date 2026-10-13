Ricing my Distro

This repo is a ricing of my virtualbox linux distro (CachyOS).

Softwares:
- waybar

### VM setup

CachyOS act need at least 3GB RAM and 30GB storage (see [cachy os page](https://wiki.cachyos.org/installation/installation_prepare/)). Virtualbox installation and VM creation is really simple and intuitive, so I will skip this step by now.

After SO installation you will need to install guest aditions from pacman:

```sh
sudo pacman -Syu
sudo pacman -S virtualbox-guest-utils
```

And them reboot
```sh
sudo reboot
```

After that, the machine will be done. But I would like to edit files in host machine, if you would like to, the Virtualbox has a feature called Shared Folders that allows to mount some Host folder inside virutal machine. For me, I mount my git folder into `/opt/rmd` and then I copy desired folder content to `~/.config`.

### Waybar installation

You can use pacman or build from [source](https://github.com/Alexays/Waybar).
```sh
sudo pacman -S waybar
```

To see a waybar, run the command:

```sh
cp .config/waybar/config.jsonc ~/.config/waybar/ & waybar
```
