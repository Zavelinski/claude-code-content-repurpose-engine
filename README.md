# content-repurpose-engine for Claude Code

[![License: MIT](https://img.shields.io/github/license/Zavelinski/claude-code-content-repurpose-engine)](LICENSE)
[![Stars](https://img.shields.io/github/stars/Zavelinski/claude-code-content-repurpose-engine?style=flat)](https://github.com/Zavelinski/claude-code-content-repurpose-engine/stargazers)
[![Last commit](https://img.shields.io/github/last-commit/Zavelinski/claude-code-content-repurpose-engine)](https://github.com/Zavelinski/claude-code-content-repurpose-engine/commits)
[![Claude Code skill](https://img.shields.io/badge/Claude%20Code-skill-8A2BE2)](https://claude.com/claude-code)

A [Claude Code](https://claude.com/claude-code) skill that turns **one source asset into many platform-native posts**. Give it a blog post, transcript, video, or long note and it extracts the core idea once, then re-packages it per platform — LinkedIn, X thread, Instagram, short-form video script, newsletter, YouTube, Reddit — each matched to that platform's format, length, and voice. Faithful to the source: it adapts wording, it does not invent facts.

## Prerequisites

Claude Code with `/plugin` support (v2.x+) and a shell if you use the manual fallback.

## Install

### Option 1 — Claude Code plugin marketplace (recommended)

```bash
/plugin marketplace add Zavelinski/claude-code-skills
/plugin install content-repurpose-engine@claude-code-skills
```

Registered hooks (if any) install through the Claude Code consent UI, with no manual edit to `~/.claude/settings.json`.

### Option 2 — Manual fallback (run it yourself)

> **Security note.** This script mutates `~/.claude/settings.json` directly. Claude Code auto-mode blocks it because a third-party `UserPromptSubmit` hook that injects text into every prompt is a known risk vector. The script is benign and local-only (no network), but you must review and run it yourself. Prefer Option 1.

```bash
git clone https://github.com/Zavelinski/claude-code-content-repurpose-engine.git
cd claude-code-content-repurpose-engine
bash install.sh        # macOS / Linux
.\install.ps1          # Windows (PowerShell)
```

## Uninstall

```bash
/plugin uninstall content-repurpose-engine@claude-code-skills    # Option 1
bash uninstall.sh                                # Option 2 (or uninstall.ps1 on Windows)
```

## Update

```bash
/plugin marketplace update claude-code-skills    # Option 1
# Option 2: pull the latest commit and re-run the manual fallback.
```

## What makes it different

Plenty of tools spit out cross-platform copy. The opinionated parts here:

- **Source-faithful** — no fact, number, quote, or claim that isn't in your source. Hooks are built from the source's angle, never fabricated.
- **Native per platform** — a LinkedIn post and a Reddit post are written differently on purpose (Reddit marketing voice gets downvoted; the skill knows that).
- **One idea per output** — it picks the angle that fits each channel instead of cramming the whole asset everywhere.

## Outputs (default set)

LinkedIn · X/thread · Instagram caption · short-form video script (Reels/Shorts/TikTok) · newsletter blurb. Optional: YouTube description, Reddit, Threads. Each output stands alone and is ready to copy or schedule.

## Use

```
You: repurpose this blog post into LinkedIn, an X thread, and a Reels script. <paste or URL>
```

Pairs well with a scheduler (e.g. a [scheduled-sop-runner](https://github.com/Zavelinski/claude-code-scheduled-sop-runner) routine) if you want cadence — this skill produces the content, not the posting.

## License

MIT. See [LICENSE](LICENSE). Original work.