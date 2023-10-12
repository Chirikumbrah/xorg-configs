#!/bin/bash

LINK="https://releases.hashicorp.com/terraform/1.4.2/terraform_1.4.2_linux_amd64.zip"
DOWNLOADED="/tmp/terraform.zip"
BINARY="/tmp/terraform"
TARGET="$HOME/.local/bin/"

wget "$LINK" -O "$DOWNLOADED"
unzip "$DOWNLOADED" -d /tmp
chmod +x "$BINARY"
mkdir -p "$TARGET"
mv "$BINARY" "$TARGET"
rm "$DOWNLOADED"
