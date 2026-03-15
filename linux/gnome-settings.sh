#!/bin/bash
# GNOME Desktop Settings Restore Script
# Run this after installing the required themes, fonts, and extensions.

# --- Themes ---
# GTK Theme: Colloid (installed via snap: gtk-theme-colloid)
# Icon Theme: Colloid (installed via snap: icon-theme-colloid)
gsettings set org.gnome.desktop.interface gtk-theme 'Colloid'
gsettings set org.gnome.desktop.interface icon-theme 'Colloid'
gsettings set org.gnome.desktop.interface cursor-theme 'Yaru'
gsettings set org.gnome.desktop.interface color-scheme 'default'

# --- Fonts ---
# Install: SF Pro Display, SF Pro Text, Google Sans Code
gsettings set org.gnome.desktop.interface font-name 'SF Pro Display 11'
gsettings set org.gnome.desktop.interface document-font-name 'SF Pro Text 10'
gsettings set org.gnome.desktop.interface monospace-font-name 'Google Sans Code 12'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Ubuntu Sans Bold 11'

# --- Font Rendering ---
gsettings set org.gnome.desktop.interface font-antialiasing 'rgba'
gsettings set org.gnome.desktop.interface font-hinting 'slight'

# --- Dock Favorites ---
gsettings set org.gnome.shell favorite-apps "['firefox_firefox.desktop', 'google-chrome.desktop', 'org.gnome.Nautilus.desktop', 'ghostty_ghostty.desktop', 'slack.desktop', 'org.gnome.Software.desktop']"

# --- GNOME Extensions ---
# Install from https://extensions.gnome.org/ or via gnome-browser-connector:
#   - Compiz alike magic lamp effect (compiz-alike-magic-lamp-effect@hermes83.github.com)
#   - Desktop Icons NG (DING) (ding@rastersoft.com)
#   - Just Perfection (just-perfection-desktop@just-perfection)
#   - Smart Brightness (smart-brightness@local)
#   - Tiling Assistant (tiling-assistant@ubuntu.com)
#   - Transparent Top Bar (transparent-top-bar@ftpix.com)
#   - Ubuntu AppIndicators (ubuntu-appindicators@ubuntu.com) [preinstalled]
#   - Ubuntu Dock (ubuntu-dock@ubuntu.com) [preinstalled]
#   - User Themes (user-theme@gnome-shell-extensions.gcampax.github.com)
