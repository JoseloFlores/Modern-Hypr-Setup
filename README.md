# Hyprland Dotfiles - Debian 13 (Trixie)

Este repositorio contiene la configuración personalizada para Hyprland, Waybar y herramientas multimedia.

## 🚀 Guía de Instalación Rápida

### 1. Instalar Dependencias del Sistema
Copia y pega este comando en tu terminal para instalar todos los programas necesarios que utiliza esta configuración:

```bash
sudo apt update && sudo apt install -y \
    hyprland waybar swaybg wofi gnome-terminal nautilus \
    google-chrome-stable playerctl wireplumber brightnessctl \
    grim slurp swappy jq fonts-font-awesome pavucontrol \
    blueman build-essential libadwaita-1-dev libgtk-4-dev \
    libgdk-pixbuf-2.0-dev pkg-config
```

### 2. Gestión de Red (Adwaita Network)
Esta configuración utiliza [adw-network](https://github.com/PlayRood32/adw-network) para una gestión de red moderna con estética libadwaita.

#### Instalación:
Requiere **Rust 1.95+**. Si usas la versión de Debian, actualiza con `rustup`.

```bash
# Compilar e instalar
git clone https://github.com/PlayRood32/adw-network.git
cd adw-network
cargo build --release
sudo install -Dm755 target/release/adwaita-network /usr/bin/adwaita-network
sudo install -Dm644 data/com.github.adw-network.desktop /usr/share/applications/com.github.adw-network.desktop

# Instalar Icono
sudo install -Dm644 data/icons/hicolor/scalable/apps/icon.png /usr/share/icons/hicolor/scalable/apps/adwaita-network.png
sudo sed -i 's/Icon=icon/Icon=adwaita-network/' /usr/share/applications/com.github.adw-network.desktop
```

### 3. Clonar Configuración
Si ya tienes este repo en GitHub, clónalo directamente en tu carpeta `.config`:

```bash
mkdir -p ~/.config
git clone https://github.com/TU_USUARIO/TU_REPO.git ~/.config/hypr
```

### 3. Estructura de Archivos
Asegúrate de que la carpeta tenga esta estructura:
- `hyprland.conf`: Configuración principal y atajos.
- `waybar/`: Barra de estado superior.
- `power_menu.sh`: Script para el menú de apagado.
- `wall.png`: Fondo de pantalla por defecto.

## ⌨️ Atajos de Teclado Multimedia (Personalizados)
Estos atajos son globales y funcionan sin importar el foco de la ventana:

| Combinación | Acción | Herramienta |
| ----------- | ------ | ----------- |
| `Ctrl + Alt + M` | Subir Volumen | `wpctl` |
| `Ctrl + Alt + N` | Bajar Volumen | `wpctl` |
| `Ctrl + Alt + /` | Play / Pause | `playerctl` |
| `Ctrl + Alt + .` | Siguiente Pista | `playerctl` |
| `Ctrl + Alt + ,` | Pista Anterior | `playerctl` |

## 📸 Capturas de Pantalla
- `Print`: Seleccionar área (con edición en `swappy`).
- `Alt + Print`: Capturar ventana activa.
- `Super + Print`: Capturar monitor actual.

## 🛠️ Notas Adicionales
- **Spotify:** Para que los controles multimedia funcionen con Spotify, asegúrate de que la aplicación esté abierta (usa `Super + Z`).
- **Actualizaciones:** El icono 󰏖 en la barra (Waybar) indica actualizaciones de Debian pendientes. Haz clic en él para abrir Kitty y actualizar el sistema automáticamente.
- **Waybar:** Si la barra no carga, verifica que el archivo `~/.config/hypr/waybar/config` tenga las rutas correctas.
