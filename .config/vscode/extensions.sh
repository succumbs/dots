#!/bin/bash

exts=(
    esbenp.prettier-vscode
    github.copilot
    github.copilot-chat
    golang.go
    icrawl.discord-vscode
    kevinrose.vsc-python-indent
    ms-python.debugpy
    ms-python.isort
    ms-python.python
    ms-python.vscode-pylance
    ms-vscode-remote.remote-wsl
    nimsaem.nimvscode
    ritwickdey.liveserver
    rust-lang.rust-analyzer
    tamasfe.even-better-toml
    zhuangtongfa.material-theme
)

for ext in "${exts[@]}"; do
    code --install-extension "$ext"
done