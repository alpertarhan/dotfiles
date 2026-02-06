#!/bin/bash
# Monokai Pro Theme Application Script for Garuda Linux

echo "=== Monokai Pro Theme Application Script ==="
echo ""

# Check if Kvantum is installed
if ! command -v kvantummanager &> /dev/null; then
    echo "Warning: Kvantum Manager not found. Installing..."
    sudo pacman -S --noconfirm kvantum
fi

# Apply Kvantum theme
echo "Applying Kvantum theme..."
kvantummanager --set MonokaiPro &> /dev/null || {
    echo "Setting Kvantum theme via configuration..."
    mkdir -p ~/.config/Kvantum
    echo "[General]\ntheme=MonokaiPro" > ~/.config/Kvantum/kvantum.kvconfig
}

# Refresh KDE settings
echo "Refreshing KDE Plasma settings..."
kbuildsycoca6 &> /dev/null
kconf_update &> /dev/null
plasmashell --replace &> /dev/null &

# Apply color scheme via kwriteconfig
echo "Applying color scheme..."
kwriteconfig6 --file ~/.config/kdeglobals --group General --key ColorScheme MonokaiPro

# Set window manager colors
echo "Setting window manager colors..."
kwriteconfig6 --file ~/.config/kdeglobals --group WM --key activeBackground "45,42,46"
kwriteconfig6 --file ~/.config/kdeglobals --group WM --key activeBlend "45,42,46"
kwriteconfig6 --file ~/.config/kdeglobals --group WM --key activeForeground "252,252,250"
kwriteconfig6 --file ~/.config/kdeglobals --group WM --key inactiveBackground "45,42,46"
kwriteconfig6 --file ~/.config/kdeglobals --group WM --key inactiveBlend "45,42,46"
kwriteconfig6 --file ~/.config/kdeglobals --group WM --key inactiveForeground "114,112,114"

# Set Plasma look and feel
echo "Setting Plasma Look and Feel..."
kwriteconfig6 --file ~/.config/kdeglobals --group KDE --key LookAndFeelPackage MonokaiPro

# Refresh GTK theme
echo "Refreshing GTK theme..."
if [ -f ~/.config/gtk-3.0/settings.ini ]; then
    sed -i 's/gtk-theme-name=.*/gtk-theme-name=MonokaiPro/' ~/.config/gtk-3.0/settings.ini
fi

echo ""
echo "=== Theme Application Complete ==="
echo ""
echo "Applied components:"
echo "  ✓ Kvantum theme: MonokaiPro"
echo "  ✓ KDE Color scheme: MonokaiPro"
echo "  ✓ Plasma theme: MonokaiPro"
echo "  ✓ Window manager colors"
echo ""
echo "Note: You may need to log out and log back in for all changes to take effect."
echo "Alternatively, open System Settings > Appearance and manually apply the theme."
echo ""
echo "To manually apply the theme:"
echo "  1. Open Kvantum Manager and select MonokaiPro"
echo "  2. In System Settings > Global Theme, select MonokaiPro"
echo "  3. In System Settings > Colors, select MonokaiPro"
echo "  4. In System Settings > Application Style, select Kvantum"