#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="$SCRIPT_DIR/elon"
CODEX_ROOT="${CODEX_HOME:-$HOME/.codex}"
DEST_DIR="$CODEX_ROOT/skills/elon"

if [ ! -f "$SOURCE_DIR/SKILL.md" ]; then
  echo "Could not find elon/SKILL.md next to install.sh"
  exit 1
fi

mkdir -p "$CODEX_ROOT/skills"

if [ -d "$DEST_DIR" ]; then
  BACKUP_DIR="$DEST_DIR.backup.$(date +%Y%m%d%H%M%S)"
  mv "$DEST_DIR" "$BACKUP_DIR"
  echo "Backed up existing ELON skill to: $BACKUP_DIR"
fi

cp -R "$SOURCE_DIR" "$DEST_DIR"

echo "Installed ELON skill to: $DEST_DIR"
echo "Restart Codex, then use: Use \$elon to inspect the live codebase before advising or changing anything."
