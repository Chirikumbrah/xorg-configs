#!/bin/bash

# create '$HOME/.local/bin/' directory
TARGET="$HOME/.local/bin/"
mkdir -p "$TARGET"

# llama
LINK="https://github.com/antonmedv/llama/releases/download/v1.4.0/llama_linux_amd64"
TARGET="$HOME/.local/bin/llama"
wget "$LINK" -O "$TARGET" && chmod +x "$TARGET"

# marksman
LINK="https://github.com/artempyanykh/marksman/releases/download/2023-04-12/marksman-linux"
TARGET="$HOME/.local/bin/marksman"
wget "$LINK" -O "$TARGET" && chmod +x "$TARGET"
