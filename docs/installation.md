# 📦 Installation

Because `dwl` requires custom patches and protocol files to work with Waybar, the standard AUR package (`dwl-git`) will fail to build or will build without Waybar support. 

To bypass this, we use a custom `PKGBUILD` that correctly copies your pre-patched `config.h` and `config.mk` into the build environment.

## Prerequisites

**Core:**
- `wlroots-git` (or `wlroots0.19`)
- `wayland-protocols`
- `xorg-xwayland` (Optional, for X11 apps)

**Bar & Utilities:**
- `waybar`
- `rofi`
- `wbg` (Wallpaper setter)
- `swaync` (Notification center)
- `lxterminal`

## Building with the Custom PKGBUILD

1. Clone this repository:
        
        git clone https://codeberg.org/WgpArch/dwl.git ~/.config/dwl

2. Navigate to the dwl source directory:
        
        cd ~/.config/dwl/dwl

3. Run `makepkg` using your custom PKGBUILD. Because the PKGBUILD is designed to look for `config.h` in the parent directory, it will pull in your patched configuration automatically:
        
        makepkg -si

*(If you use an AUR helper like `trizen`, you can run `trizen -S dwl-git`, and when it prompts you to edit the PKGBUILD, delete the contents and paste the custom PKGBUILD provided in this repo.)*

4. Ensure scripts are executable:
        
        chmod +x ~/.config/dwl/scripts/*
