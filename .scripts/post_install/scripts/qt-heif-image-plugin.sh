#!/bin/bash

SRC_DIR="./temp-qt-plugin"
BUILD_DIR="$SRC_DIR/build"

git clone https://github.com/jakar/qt-heif-image-plugin.git "$SRC_DIR"
mkdir -p "$BUILD_DIR"
cmake -S "$SRC_DIR" -B "$BUILD_DIR"
make -C "$BUILD_DIR"
sudo make -C "$BUILD_DIR" install
rm -fr "$SRC_DIR"

