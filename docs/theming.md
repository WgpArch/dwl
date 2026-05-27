# 🎨 Look & Feel

This dwl config uses a clean, dark aesthetic with dynamic gaps and custom border colors, heavily inspired by the dwm community standards.

## General Layout
- **Layout:** Tiling (default), Floating, Monocle.
- **Gaps:** 15px (`gappx`), toggled with `Super + G`.
- **Border Size:** 2px.

## Colors
The colors are defined in `config.h` using hex values:
- **Root Background:** `#222222` (Dark Grey)
- **Border (Unfocused):** `#5588aa` (Muted Steel Blue)
- **Border (Focused):** `#ffffff` (White)
- **Border (Urgent):** `#ff0000` (Red)

## Autostart
Applications are spawned automatically via the `autostart` array in `config.h`:
- **Wallpaper:** `wbg` (Sets Anime dress wallpaper)
- **Waybar:** Launches with `config2.jsonc` and `style2.css`
- **Network:** `nm-applet`
- **Notifications:** `swaync`

## Input Devices
- **Keyboard:** Repeat rate 25, delay 600. Layout `pl`.
- **Trackpad:** Tap-to-click, tap-and-drag, and disable-while-typing enabled. 2-finger scroll.
