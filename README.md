# content-repurpose-engine for Claude Code

[![License: MIT](https://img.shields.io/github/license/Zavelinski/content-repurpose-engine)](LICENSE)
[![Stars](https://img.shields.io/github/stars/Zavelinski/content-repurpose-engine?style=flat)](https://github.com/Zavelinski/content-repurpose-engine/stargazers)
[![Last commit](https://img.shields.io/github/last-commit/Zavelinski/content-repurpose-engine)](https://github.com/Zavelinski/content-repurpose-engine/commits)
[![Claude Code skill](https://img.shields.io/badge/Claude%20Code-skill-8A2BE2)](https://claude.com/claude-code)

A [Claude Code](https://claude.com/claude-code) skill that turns **one source asset into many platform-native posts**. Give it a blog post, transcript, video, or long note and it extracts the core idea once, then re-packages it per platform — LinkedIn, X thread, Instagram, short-form video script, newsletter, YouTube, Reddit — each matched to that platform's format, length, and voice. Faithful to the source: it adapts wording, it does not invent facts.

## What makes it different

Plenty of tools spit out cross-platform copy. The opinionated parts here:

- **Source-faithful** — no fact, number, quote, or claim that isn't in your source. Hooks are built from the source's angle, never fabricated.
- **Native per platform** — a LinkedIn post and a Reddit post are written differently on purpose (Reddit marketing voice gets downvoted; the skill knows that).
- **One idea per output** — it picks the angle that fits each channel instead of cramming the whole asset everywhere.

## Outputs (default set)

LinkedIn · X/thread · Instagram caption · short-form video script (Reels/Shorts/TikTok) · newsletter blurb. Optional: YouTube description, Reddit, Threads. Each output stands alone and is ready to copy or schedule.

## Install

```bash
git clone https://github.com/Zavelinski/content-repurpose-engine.git
cd content-repurpose-engine
```

**macOS / Linux**
```bash
bash install.sh
```

**Windows (PowerShell)**
```powershell
.\install.ps1
```

Skill-only install (no hooks, no `settings.json` changes). Restart Claude Code, then ask to **repurpose this** (or `/content-repurpose-engine`).

## Use

```
You: repurpose this blog post into LinkedIn, an X thread, and a Reels script. <paste or URL>
```

Pairs well with a scheduler (e.g. a [scheduled-sop-runner](https://github.com/Zavelinski/scheduled-sop-runner) routine) if you want cadence — this skill produces the content, not the posting.

## Uninstall

```bash
bash uninstall.sh      # macOS / Linux
```
```powershell
.\uninstall.ps1        # Windows
```

## License

MIT. See [LICENSE](LICENSE). Original work.
