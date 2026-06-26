#!/usr/bin/env bash
# Install the content-repurpose-engine skill into ~/.claude (or $CLAUDE_CONFIG_DIR).
set -euo pipefail

repo="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
claude_dir="${CLAUDE_CONFIG_DIR:-$HOME/.claude}"

mkdir -p "$claude_dir/skills/content-repurpose-engine"
cp "$repo/skills/content-repurpose-engine/SKILL.md" "$claude_dir/skills/content-repurpose-engine/SKILL.md"

echo ""
echo "content-repurpose-engine installed into $claude_dir"
echo "Restart Claude Code, then ask to 'repurpose this' (or /content-repurpose-engine)."
