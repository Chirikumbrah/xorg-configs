#!/bin/bash

# links
JOPLIN_LINK="https://github.com/laurent22/joplin/releases/download/v2.10.13/Joplin-2.10.13.AppImage"
LOCALSEND_LINK="https://github.com/localsend/localsend/releases/download/v1.8.0/LocalSend-1.8.0.AppImage"
DISCORD_LINK="https://github.com/srevinsaju/discord-appimage/releases/download/stable/Discord-0.0.26-x86_64.AppImage"

# binaries
JOPLIN_BINARY="/tmp/Joplin"
LOCALSEND_BINARY="/tmp/LocalSend"
DISCORD_BINARY="/tmp/Discord"

TARGET_DIR="$HOME/.local/bin/"
mkdir -p "$TARGET_DIR"

wget "$JOPLIN_LINK"    -O "$JOPLIN_BINARY"    && chmod +x $JOPLIN_BINARY
wget "$LOCALSEND_LINK" -O "$LOCALSEND_BINARY" && chmod +x $LOCALSEND_BINARY
wget "$DISCORD_LINK"   -O "$DISCORD_BINARY"   && chmod +x $DISCORD_BINARY

for binary in $JOPLIN_LINK $LOCALSEND_BINARY $DISCORD_BINARY ; do
	mv "$binary" "$TARGET_DIR"
done
