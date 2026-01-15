# Hyprland Dotfiles

Personal Hyprland desktop dotfiles  
**Portable, multi-machine, systemd-user friendly**

---

## ✨ Overview

This repository contains my personal **Hyprland-based desktop environment**, designed to be:

- Portable across machines (desktop / notebook)
- Modular and readable
- Wayland-native
- Focused on stability, clarity, and aesthetics

It is not a minimal setup, but a **carefully layered and documented one**.

---

## 🧠 Philosophy

- Configuration is split into logical layers
- Autostart and services are handled via systemd-user when possible
- Machine-specific settings (monitors, power) are isolated
- Visual polish matters, but never at the cost of control

This is a *working system*, not a screenshot-only rice.

---

## 🧩 Components

Main tools used:

- **Hyprland** – Wayland compositor
- **Waybar** – Status bar
- **eww** – Widgets (calendar, UI elements)
- **nwg-drawer** – Application launcher
- **rofi** – Menus and utilities
- **hyprpaper / hyprlock / hypridle**
- **fastfetch** – System info
- **wlogout**
- Custom scripts and helpers

---

## 📁 Repository Structure

.
├── .config/
│ ├── hypr/ # Hyprland core configuration (modular)
│ ├── waybar/
│ ├── eww/
│ ├── nwg-drawer/
│ ├── rofi/
│ ├── wlogout/
│ └── fastfetch/
├── .local/
│ ├── bin/ # Personal scripts
│ └── share/fonts # Custom fonts
├── .ThemeFiles/
│ └── wallpaper/ # Wallpapers used by hyprpaper
└── .zshrc


---

## ⚠️ Notes on Portability

- Monitor configuration is **machine-dependent**
- Power profiles (AC/Battery) are separated
- Some paths may need adjustment on first use
- Wallpapers are included and can be heavy

---

## 🚀 Usage

These dotfiles are intended to be **studied, adapted, and selectively used**.

If you plan to deploy them:

1. Review `hypr/conf/10-monitors.conf`
2. Check autostart scripts
3. Adjust wallpaper paths if needed
4. Reload Hyprland or reboot

---

## 📌 Status

This repository represents a **stable baseline** of a real daily-driven system.  
Expect evolution, cleanup, and refinements over time.

---

## 📜 License

No formal license yet.  
Use, learn, adapt — attribution appreciated.
