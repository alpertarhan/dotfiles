# Monokai Pro Theme - Dotfiles

Monokai Pro tema dosyaları Garuda Linux (KDE Plasma 6.5.5) için hazırlanmıştır. Bu dotfiles'ı GitHub'a yükleyebilir ve başka sistemlere kopyalayabilirsiniz.

## İçerik

Bu dotfiles şunları içerir:

- **Kvantum Theme**: `MonokaiPro/` - Qt uygulamaları için tema
- **KDE Color Scheme**: `MonokaiPro.colors` - KDE renk şeması
- **Plasma Desktop Theme**: `MonokaiPro/` - Plasma masaüstü teması
- **Wallpaper**: `MonokaiPro/` - Monokai Pro duvar kağıdı
- **Installation Script**: `install.sh` - Otomatik kurulum scripti
- **Application Script**: `apply-monokai-theme.sh` - Tema uygulama scripti

## Kurulum

### 1. Dotfiles'ı Klonlayın veya İndirin

```bash
# GitHub'dan klonlayın (örnek)
git clone https://github.com/kullaniciadi/dotfiles.git ~/dotfiles
```

### 2. Temayı Kurun

```bash
cd ~/dotfiles/monokai-pro-theme
./install.sh
```

Bu script tüm tema dosyalarını doğru konumlara kopyalar:
- `~/.config/Kvantum/MonokaiPro/`
- `~/.local/share/color-schemes/MonokaiPro.colors`
- `~/.local/share/plasma/desktoptheme/MonokaiPro/`
- `~/.local/share/wallpapers/MonokaiPro/`

### 3. Temayı Uygulayın

```bash
./apply-monokai-theme.sh
```

Veya manuel olarak:
1. **Kvantum Manager**'ı açın → MonokaiPro seçin → Apply
2. **System Settings** → **Appearance** → **Global Theme** → MonokaiPro
3. **System Settings** → **Appearance** → **Colors** → MonokaiPro
4. **System Settings** → **Appearance** → **Application Style** → Kvantum

## Renk Paleti

- **Background**: #2D2A2E (koyu mor-kahverengi)
- **Surface/Selection**: #403E41
- **Foreground**: #FCFCFA (beyaz)
- **Comments/Muted**: #727072
- **Accent Pink**: #FF6188 (birincil vurgu)
- **Accent Orange**: #FC9867
- **Accent Yellow**: #FFD866
- **Accent Green**: #A9DC76
- **Accent Cyan**: #78DCE8
- **Accent Purple**: #AB9DF2

## Özellikler

- ✨ Translucent pencereler ve blur efektleri
- 🎨 Tüm KDE uygulamaları için tutarlı renk şeması
- 🖼️ Monokai Pro renklerine uygun duvar kağıdı
- 🔄 Yumuşak animasyonlar
- 💫 Pembe vurgu renkli (#FF6188) highlight efektleri

## Dosya Yapısı

```
monokai-pro-theme/
├── MonokaiPro/                    # Kvantum theme
│   ├── MonokaiPro.kvconfig       # Ana tema yapılandırması
│   └── ...
├── MonokaiPro.colors             # KDE renk şeması
├── apply-monokai-theme.sh        # Tema uygulama scripti
├── install.sh                    # Kurulum scripti
├── MONOKAI_PRO_THEME_README.md   # Detaylı dokümantasyon
└── README.md                     # Bu dosya
```

## GitHub'a Ekleme

```bash
# Dotfiles dizinine gidin
cd ~/dotfiles

# Git repository'si başlatın (zaten yoksa)
git init

# Dosyaları ekleyin
git add .

# Commit yapın
git commit -m "Add Monokai Pro theme for KDE Plasma"

# GitHub repository'sine bağlayın
git remote add origin https://github.com/kullaniciadi/dotfiles.git

# Push yapın
git branch -M main
git push -u origin main
```

## Diğer Sistemlere Kopyalama

```bash
# Dotfiles'ı yeni sisteme klonlayın
git clone https://github.com/kullaniciadi/dotfiles.git ~/dotfiles

# Temayı kurun
cd ~/dotfiles/monokai-pro-theme
./install.sh

# Temayı uygulayın
./apply-monokai-theme.sh
```

## Gereksinimler

- Garuda Linux veya Arch Linux
- KDE Plasma 6.5.5 veya üzeri
- Kvantum ve Kvantum Manager:
  ```bash
  sudo pacman -S kvantum kvantum-manager-qt6
  ```

## Sorun Giderme

Detaylı sorun giderme için `MONOKAI_PRO_THEME_README.md` dosyasına bakın.

### Tema Uygulanmıyorsa

```bash
# Çıkış yapın ve tekrar giriş yapın
# Veya Plasma'ı yeniden başlatın
kquitapp6 plasmashell && kstart5 plasmashell
```

### Renkler Güncellenmiyorsa

1. **System Settings** → **Colors** → MonokaiPro → Apply
2. KDE uygulamalarını yeniden başlatın

## Katkıda Bulunma

Temayı kişiselleştirmek için dosyaları düzenleyebilir ve kendi değişikliklerinizi GitHub'a push edebilirsiniz.

### Renkleri Değiştirmek

**Kvantum için**:
`~/.config/Kvantum/MonokaiPro/MonokaiPro.kvconfig` → `[Colors]` bölümü

**KDE Colors için**:
`~/.local/share/color-schemes/MonokaiPro.colors`

### Transparanlığı Ayarlamak

`~/.config/Kvantum/MonokaiPro/MonokaiPro.kvconfig`:
```ini
[TranslucentWindows]
DialogsOpacity=0.85
MenusOpacity=0.9
```

## Lisans

GPL

## Teşekkürler

- Base Theme: ChromeOS-dark
- Color Scheme: Monokai Pro
- Platform: Garuda Linux (KDE Plasma 6.5.5)

---

**Monokai Pro temalı Linux deneyiminin keyfini çıkarın!** 🎨✨