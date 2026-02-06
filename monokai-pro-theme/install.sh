#!/bin/bash
# Monokai Pro Theme Installation Script
# This script installs the Monokai Pro theme from dotfiles

set -e

echo "=== Monokai Pro Theme Installation ==="
echo ""

# Create target directories
echo "Creating directories..."
mkdir -p ~/.config/Kvantum
mkdir -p ~/.local/share/color-schemes
mkdir -p ~/.local/share/plasma/desktoptheme
mkdir -p ~/.local/share/wallpapers

# Copy theme files
echo "Copying Kvantum theme..."
cp -r "$(dirname "$0")/MonokaiPro" ~/.config/Kvantum/

echo "Copying KDE color scheme..."
cp "$(dirname "$0")/MonokaiPro.colors" ~/.local/share/color-schemes/

echo "Copying Plasma desktop theme..."
cp -r "$(dirname "$0")/MonokaiPro" ~/.local/share/plasma/desktoptheme/

echo "Copying wallpaper..."
cp -r "$(dirname "$0")/MonokaiPro" ~/.local/share/wallpapers/

echo ""
echo "=== Installation Complete ==="
echo ""
echo "To apply the theme, run:"
echo "  ./apply-monokai-theme.sh"
echo ""
echo "Or manually apply the theme through System Settings."