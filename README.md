Ricing my Distro

This repo is a ricing of my virtualbox linux distro (CachyOS).

### VM setup

CachyOS act need at least 3GB RAM and 30GB storage (see https://wiki.cachyos.org/installation/installation_prepare/). Virtualbox installation and VM creation is really simple and intuitive, so I will skip this step by now.

After SO installation you will need to install guest aditions from pacman:

```sh
sudo pacman -Syu
sudo pacman -S virtualbox-guest-utils
```

And them reboot
```sh
sudo reboot
```

