#!/usr/bin/env bash
set -euo pipefail

INSTALL_DIR="${HOME}/.local/bin"

mkdir -p "$INSTALL_DIR"

cp "$(dirname "$0")/task" "$INSTALL_DIR/task"
chmod +x "$INSTALL_DIR/task"

echo "Installed task to $INSTALL_DIR/task"

if ! echo "$PATH" | grep -q "$INSTALL_DIR"; then
  echo ""
  echo "Note: $INSTALL_DIR is not in your PATH."
  echo "Add this to your shell config (~/.bashrc, ~/.zshrc, etc.):"
  echo ""
  echo "  export PATH=\"\$HOME/.local/bin:\$PATH\""
fi
