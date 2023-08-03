#!/usr/bin/env bash

# Use the default instance config
cp element-web/config.sample.json element-web/config.json

# Patch jitsi with improvements
git apply jitsi-improvements.patch

# Enter a bash shell with required dependencies and build the webpage
nix-shell -p cmake yarn --run 'make web-release'
