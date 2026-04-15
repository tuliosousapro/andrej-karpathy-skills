#!/usr/bin/env bash
# Install karpathy-guidelines skill into a project for a specific agent.
# Usage: ./install.sh [agent]
# Agents: cursor, gemini, claude, openclaw, copilot, windsurf, hermes, codex, antigravity

set -e

SKILL_URL="https://raw.githubusercontent.com/tuliosousapro/andrej-karpathy-skills/main/skills/karpathy-guidelines/SKILL.md"
EXAMPLES_URL="https://raw.githubusercontent.com/tuliosousapro/andrej-karpathy-skills/main/skills/karpathy-guidelines/References/EXAMPLES.md"

declare -A AGENT_DIRS=(
  [cursor]=".cursor/skills/karpathy-guidelines"
  [gemini]=".gemini/skills/karpathy-guidelines"
  [claude]=".claude/skills/karpathy-guidelines"
  [openclaw]=".openclaw/skills/karpathy-guidelines"
  [copilot]=".github/skills/karpathy-guidelines"
  [windsurf]=".windsurf/skills/karpathy-guidelines"
  [hermes]=".hermes/skills/karpathy-guidelines"
  [codex]=".codex/skills/karpathy-guidelines"
  [antigravity]=".gemini/skills/karpathy-guidelines"
)

AGENT="${1:-cursor}"

if [[ -z "${AGENT_DIRS[$AGENT]}" ]]; then
  echo "Unknown agent: $AGENT"
  echo "Supported: ${!AGENT_DIRS[*]}"
  exit 1
fi

TARGET_DIR="${AGENT_DIRS[$AGENT]}"

echo "Installing karpathy-guidelines for $AGENT -> $TARGET_DIR"

mkdir -p "$TARGET_DIR/References"
curl -sL "$SKILL_URL" -o "$TARGET_DIR/SKILL.md"
curl -sL "$EXAMPLES_URL" -o "$TARGET_DIR/References/EXAMPLES.md"

echo "Done."
