#!/usr/bin/env bash
# Remove the content-repurpose-engine skill from ~/.claude (or $CLAUDE_CONFIG_DIR).
set -euo pipefail
claude_dir="${CLAUDE_CONFIG_DIR:-$HOME/.claude}"
rm -rf "$claude_dir/skills/content-repurpose-engine"
echo "content-repurpose-engine uninstalled from $claude_dir."
