# Monokai Pro Theme for Garuda Linux (KDE Plasma 6.5.5)

A comprehensive Monokai Pro themed environment with fluent design aesthetics for Garuda Linux.

## Theme Components

### Color Palette
- **Background**: #2D2A2E (dark purple-brown)
- **Surface/Selection**: #403E41
- **Foreground**: #FCFCFA (white)
- **Comments/Muted**: #727072
- **Accent Pink**: #FF6188 (primary highlight)
- **Accent Orange**: #FC9867
- **Accent Yellow**: #FFD866
- **Accent Green**: #A9DC76
- **Accent Cyan**: #78DCE8
- **Accent Purple**: #AB9DF2

### Created Components

#### 1. Kvantum Theme
**Location**: `~/.config/Kvantum/MonokaiPro/MonokaiPro.kvconfig`

Based on ChromeOS-dark with Monokai Pro colors:
- Translucent windows with blur effects enabled
- Custom color scheme matching Monokai Pro palette
- Highlight color: #FF6188 (pink accent)
- Optimized for Qt applications

#### 2. KDE Plasma Color Scheme
**Location**: `~/.local/share/color-schemes/MonokaiPro.colors`

Full color scheme for all KDE applications with:
- Consistent Monokai Pro colors
- Window manager color integration
- Active/inactive state styling

#### 3. Plasma Desktop Theme
**Location**: `~/.local/share/plasma/desktoptheme/MonokaiPro/`

Desktop theme components including:
- Theme metadata
- Color configuration
- Panel and widget styling

#### 4. Wallpaper
**Location**: `~/.local/share/wallpapers/MonokaiPro/`

Monokai Pro themed wallpaper available in multiple resolutions:
- 1920x1080 (Full HD)
- 2560x1440 (2K)
- 3840x2160 (4K)
- 1080x1920 (Portrait)

Features:
- Gradient background with Monokai Pro colors
- Decorative elements with blur effects
- Subtle grid pattern overlay
- SVG and PNG formats

## Installation & Application

### Option 1: Automatic Application (Recommended)

Run the provided script:
```bash
./apply-monokai-theme.sh
```

This script will:
- Apply Kvantum theme
- Update KDE color scheme
- Set Plasma theme
- Refresh system settings
- Apply window manager colors

### Option 2: Manual Application

#### Step 1: Apply Kvantum Theme
1. Open **Kvantum Manager**
2. Select **MonokaiPro** from the theme list
3. Click **Apply this Theme**

#### Step 2: Apply KDE Color Scheme
1. Open **System Settings**
2. Go to **Appearance** → **Colors**
3. Select **MonokaiPro**
4. Click **Apply**

#### Step 3: Apply Plasma Global Theme
1. Open **System Settings**
2. Go to **Appearance** → **Global Theme**
3. Select **MonokaiPro**
4. Click **Apply**

#### Step 4: Apply Application Style
1. Open **System Settings**
2. Go to **Appearance** → **Application Style**
3. Under **Qt Widgets Style**, select **Kvantum**
4. Click **Apply**

#### Step 5: Set Wallpaper
1. Right-click on desktop
2. Select **Configure Desktop and Wallpaper**
3. Choose **MonokaiPro** wallpaper
4. Click **Apply**

## System Configuration

The theme has been applied to `~/.config/kdeglobals` with the following settings:
- **ColorScheme**: MonokaiPro
- **LookAndFeelPackage**: MonokaiPro
- **Window Manager Colors**: Updated to Monokai Pro palette

## Features

### Visual Effects
- ✨ Translucent windows with blur
- 🎨 Consistent color scheme across all applications
- 🖼️ Custom matching wallpaper
- 🔄 Smooth animations
- 💫 Highlight effects with pink accent (#FF6188)

### Design Philosophy
- **Fluent Design**: Modern, smooth interface
- **Monokai Pro Aesthetic**: Developer-focused color palette
- **Consistency**: Unified look across KDE components
- **Accessibility**: High contrast with clear visual hierarchy

## Troubleshooting

### Theme Not Applying

If the theme doesn't apply after running the script:

1. **Log out and log back in**
   ```bash
   # Or restart Plasma
   kquitapp6 plasmashell && kstart5 plasmashell
   ```

2. **Manual Application**: Follow Option 2 steps above

3. **Check Kvantum Installation**:
   ```bash
   sudo pacman -S kvantum kvantum-manager-qt6
   ```

### Colors Not Updating

If colors don't update:
1. Open **System Settings** → **Colors**
2. Click **Apply** on MonokaiPro scheme
3. Restart KDE applications

### Transparency Issues

If transparency effects aren't working:
1. Ensure KWin compositor is enabled
2. Check System Settings → Display and Monitor → Compositor
3. Verify "Allow applications to block compositing" is unchecked

## Customization

### Modifying Colors

To customize colors, edit:
- **Kvantum**: `~/.config/Kvantum/MonokaiPro/MonokaiPro.kvconfig` → `[Colors]` section
- **KDE Colors**: `~/.local/share/color-schemes/MonokaiPro.colors`

### Adjusting Transparency

Edit `~/.config/Kvantum/MonokaiPro/MonokaiPro.kvconfig`:
```ini
[TranslucentWindows]
DialogsOpacity=0.85
MenusOpacity=0.9
```

### Changing Blur Radius

Edit `~/.config/Kvantum/MonokaiPro/MonokaiPro.kvconfig`:
```ini
[General]
menu_blur_radius=16
tooltip_blur_radius=12
```

## File Structure

```
~/.config/
├── Kvantum/
│   └── MonokaiPro/
│       └── MonokaiPro.kvconfig
└── kdeglobals (modified)

~/.local/share/
├── color-schemes/
│   └── MonokaiPro.colors
├── plasma/desktoptheme/
│   └── MonokaiPro/
│       ├── metadata.desktop
│       └── colors
└── wallpapers/
    └── MonokaiPro/
        ├── metadata.desktop
        └── contents/images/
            ├── 1920x1080.png
            ├── 1920x1080.svg
            ├── 2560x1440.png
            ├── 3840x2160.png
            └── 1080x1920.png

~/Desktop/
├── apply-monokai-theme.sh
└── MONOKAI_PRO_THEME_README.md
```

## Credits

- **Base Theme**: ChromeOS-dark
- **Color Scheme**: Monokai Pro
- **Platform**: Garuda Linux (KDE Plasma 6.5.5)
- **Designed for**: Arch Linux/Garuda Linux

## Support

For issues or questions:
1. Check this README's Troubleshooting section
2. Verify all theme components are in their correct locations
3. Ensure Kvantum and Plasma are up to date
4. Check system logs for errors: `journalctl -xe`

## Notes

- This theme is optimized for dark mode usage
- Best experienced with a dark icon theme (e.g., Tela, Papirus)
- Some applications may need to be restarted after theme changes
- GTK applications may need additional GTK theme configuration

---

**Enjoy your Monokai Pro themed Garuda Linux!** 🎨✨