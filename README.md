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
sudo systemctl enable --now vboxservice.service
```

And then reboot

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
cp -r .config/waybar ~/.config & waybar
```

### GTK theming

Searching by some ways to create a GTK theme to match to wallpaper colors, I found the repository called `Colloid-gtk-theme` on github. Then I edit the repository to extend the default theme config and use the cli program to create a theme.

The steps that I fellow was:

1. Git clone Colloid repository at `fe11342f37f124f1b29d44cf33e9a06053f4bba2` as last commit;
2. To copy `Colloid-gtk-theme\src\sass\_color-palette-default.scss` into new file with my disered color scheme (that I called as My Beats theme);
3. To edit install.sh to allow choose mybeats theme;
4. To create `Colloid-gtk-theme\src\main\labwc\themerc-MyBeats` based on the default themerc file. Still on this folder, create the light and dark version if you want too;
5. To create Dark and Light modes on `Colloid-gtk-theme\src\main\plank` based on theme dark and light files;
6. To create assets on `Colloid-gtk-theme\src\assets\gtk-2.0`. To do that I saw some folder contents and `assets-Grey` looks good to me. Then I copy it as `assets-MyBeats`. If you want more variants, copy the variants and costomize them.
7. Run the command `./install.sh --tweaks $YOUR_SCHEME_NAME --color standard`. By default colloid install all variants, the standard parameter will install only primary theme variant (without dark o light).
8. The output will stay at `~/.themes/Colloid-MyBeats`
9. To set new theme, install nwg-look with `sudo pacman -S nwg-look`, and type `nwg-look` on terminal and select your theme.
10. After that, I notice that dolphin (and others programs) was not matching with the theme, so I tried to study how to customize QT and I stoped here.
