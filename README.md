# Karpathy Guidelines Skill

Behavioral guidelines to reduce common LLM coding mistakes, derived from Andrej Karpathy's observations.

## Stack

- Markdown
- LLM Capability/Preference Skill

## Setup for Coding Agents (Cursor / Windsurf / Cline)

To make these rules globally available to your AI coding agents, append the skill to your project's agent rules file.

**Using curl (Mac/Linux):**
```bash
# For Cursor
curl -sL https://raw.githubusercontent.com/tuliosousapro/andrej-karpathy-skills/main/skills/karpathy-guidelines/SKILL.md >> .cursorrules

# For Windsurf
curl -sL https://raw.githubusercontent.com/tuliosousapro/andrej-karpathy-skills/main/skills/karpathy-guidelines/SKILL.md >> .windsurfrules
```

**Using the installation script:**
```bash
chmod +x install.sh
./install.sh .cursorrules
```

Or just copy the raw contents of `skills/karpathy-guidelines/SKILL.md` directly.
