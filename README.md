# Karpathy Guidelines Skill

Behavioral guidelines to reduce common LLM coding mistakes, derived from Andrej Karpathy's observations.

## Stack

- Markdown
- LLM Capability/Preference Skill

## Install via SkillKit (Recommended)

[SkillKit](https://github.com/rohitg00/skillkit) is the universal package manager for AI agent skills. One command installs to **all your agents**.

```bash
npx skillkit install tuliosousapro/andrej-karpathy-skills
skillkit sync
```

This auto-detects your installed agents (Cursor, Gemini CLI, Claude Code, OpenClaw, Hermes, Windsurf, Copilot, etc.) and deploys to each.

### Install for a specific agent

```bash
skillkit install tuliosousapro/andrej-karpathy-skills --agent cursor
skillkit install tuliosousapro/andrej-karpathy-skills --agent gemini
skillkit install tuliosousapro/andrej-karpathy-skills --agent claude
```

## Manual Install

If you don't use SkillKit, copy the skill into the correct directory for your agent:

| Agent | Directory |
| --- | --- |
| Claude Code | `.claude/skills/` |
| Cursor | `.cursor/skills/` |
| Gemini CLI | `.gemini/skills/` |
| OpenClaw | `.openclaw/skills/` |
| Copilot | `.github/skills/` |
| Windsurf | `.windsurf/skills/` |
| Hermes Agent | `.hermes/skills/` |
| Codex | `.codex/skills/` |
| Antigravity | `.gemini/skills/` |

```bash
# Example: manual install for Cursor
mkdir -p .cursor/skills/karpathy-guidelines
curl -sL https://raw.githubusercontent.com/tuliosousapro/andrej-karpathy-skills/main/skills/karpathy-guidelines/SKILL.md \
  -o .cursor/skills/karpathy-guidelines/SKILL.md
```

## Skill Contents

- **`skills/karpathy-guidelines/SKILL.md`** — Core guidelines (6 rules)
- **`skills/karpathy-guidelines/References/EXAMPLES.md`** — Real-world code examples
