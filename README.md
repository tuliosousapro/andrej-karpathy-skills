# Karpathy Guidelines Skill

Behavioral guidelines to reduce common LLM coding mistakes, derived from Andrej Karpathy's observations.

## Stack

- Markdown
- LLM Capability/Preference Skill
## Setup for Coding Agents (Cursor, Windsurf, Claude, OpenClaw, Hermes, etc.)

We recommend using [SkillKit](https://github.com/rohitg00/skillkit) to install this skill across all your AI agents. SkillKit automatically translates the `SKILL.md` to your specific agent and manages updates.

**Using SkillKit (Recommended):**
```bash
npx skillkit install tuliosousapro/andrej-karpathy-skills
```

**Using curl (Manual fallback):**
```bash
# Append to .cursorrules
curl -sL https://raw.githubusercontent.com/tuliosousapro/andrej-karpathy-skills/main/skills/karpathy-guidelines/SKILL.md >> .cursorrules

# Append to .windsurfrules
curl -sL https://raw.githubusercontent.com/tuliosousapro/andrej-karpathy-skills/main/skills/karpathy-guidelines/SKILL.md >> .windsurfrules
```

Or just copy the raw contents of `skills/karpathy-guidelines/SKILL.md` directly.
