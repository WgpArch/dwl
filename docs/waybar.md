# 📊 Waybar & Scripts

This setup uses a custom Waybar positioned at the top center, communicating with dwl via the `dwl-ipc-unstable-v2` protocol. It features dual Catppuccin themes and custom modules.

## 📐 Bar Layout

### Left
- **Custom App Menu:** Arch Linux icon. Opens Rofi (sleek-dark theme).
- **dwl/tags:** Displays 11 persistent workspace tags with active/urgent indicators.
- **Tray:** System app tray.

### Center
- **Clock:** Date, time, and calendar tooltip.
- **Custom Weather:** Live weather data via Python script.

### Right
- **Custom Player:** 🎵 Current media playback.
- **Pulseaudio:** Volume control.
- **Battery:** Battery percentage and status.
- **CPU & Memory:** System usage monitors.
- **Custom Notification:** SwayNC integration.
- **Custom Power:** Power button. Opens Rofi power menu.

## 🎨 Dual Theming

This config includes two Waybar themes to match your mood or ambient lighting:
1. **Catppuccin Macchiato (Dark):** Default theme (`macchiato.css`).
2. **Catppuccin Latte (Light):** Light theme (`latte.css`).

To switch themes, simply change the CSS file launched in your dwl `config.h` autostart array, or run waybar manually with the `-s` flag pointing to the desired `.css` file.

## 📜 Key Scripts

Located in `~/.config/dwl/scripts/`:

| Script | Description |
| :--- | :--- |
| `screenshot_copy.sh` | Screenshot utility using grim/slurp that copies to clipboard. |
| `rofi_powermenu` | Logout, reboot, and shutdown Rofi menu. |
