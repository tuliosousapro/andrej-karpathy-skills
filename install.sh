#!/usr/bin/env bash
# script to install karpathy-guidelines skill into a local project

TARGET_FILE=".cursorrules"

if [ "$1" != "" ]; then
    TARGET_FILE="$1"
fi

echo "Installing Karpathy Guidelines into $TARGET_FILE..."

# Fetch the raw markdown content
CONTENT=$(curl -sL https://raw.githubusercontent.com/tuliosousapro/andrej-karpathy-skills/main/skills/karpathy-guidelines/SKILL.md)

if [ $? -ne 0 ] || [ -z "$CONTENT" ]; then
    echo "Error: Failed to fetch skill from GitHub."
    exit 1
fi

echo -e "\n\n$CONTENT\n" >> "$TARGET_FILE"

echo "✅ Installed successfully in $TARGET_FILE!"
