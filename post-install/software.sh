#!/bin/bash

PKGS=(
    # - development
    "base-devel"
    "git"
    "python"
    "rust"
    "nim"
    "go"
    "neovim"
    "visual-studio-code-bin"

    # - fonts
    "noto-fonts"
    "noto-fonts-emoji"
    "ttf-iosevka-nerd"
    "ttf-jetbrains-mono-nerd"
    "ttf-firacode-nerd"
    "cozette-ttf"
    "cozette-otb"

    # - terminal
    "alacritty"
    "starship"
    "zsh"

    # - media
    "ffmpeg"
    "darktable"
    "mpv"
    "qview"

    # - internet / web
    "librewolf-bin"

    # - productivity
    "obsidian"
)

sudo pacman -S --noconfirm base-devel git && git clone https://aur.archlinux.org/paru-bin.git && (cd paru-bin && makepkg -si) && rm -r paru-bin

for PKG in "${PKGS[@]}"; do
    paru -S --noconfirm $PKG
done