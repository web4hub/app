#!/usr/bin/env bash

echo "⚡ Creating Web4 Project..."

cue export configs/dev.cue

mkdir -p src components views router assets

echo "Done."
