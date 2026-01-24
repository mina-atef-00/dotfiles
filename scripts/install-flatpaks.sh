#!/usr/bin/env bash
set -euo pipefail

# Enable Flathub
enable_flathub() {
    if ! flatpak remote-list 2>/dev/null | grep -q flathub; then
        flatpak remote-add --if-not-exists flathub \
            https://flathub.org/repo/flathub.flatpakrepo
    fi
}

# Install flatpaks
install_flatpaks() {
    local flatpaks=(
        "org.mozilla.Thunderbird"
        "com.github.neithern.g4music"
        "com.github.tchx84.Flatseal"
        "org.gnome.Firmware"
        "org.libreoffice.LibreOffice"
        "com.obsproject.Studio"
        "org.localsend.localsend_app"
        "com.valvesoftware.Steam"
        "dev.zed.Zed"
        "app.zen_browser.zen"
        "org.torproject.torbrowser-launcher"
        "org.qbittorrent.qBittorrent"
        "io.ente.auth"
        "md.obsidian.Obsidian"
        "dev.vencord.Vesktop"
        "com.github.Matoking.protontricks"
    )

    for flatpak in "${flatpaks[@]}"; do
        if ! flatpak list | grep -q "$flatpak"; then
            flatpak install -y "$flatpak" || echo "Failed to install $flatpak"
        fi
    done
}

# Main
enable_flathub
install_flatpaks
