# Install the content-repurpose-engine skill into ~/.claude (or $env:CLAUDE_CONFIG_DIR).
$ErrorActionPreference = 'Stop'

$repo = Split-Path -Parent $MyInvocation.MyCommand.Path
$claudeDir = if ($env:CLAUDE_CONFIG_DIR) { $env:CLAUDE_CONFIG_DIR } else { Join-Path $HOME '.claude' }

New-Item -ItemType Directory -Force -Path (Join-Path $claudeDir 'skills\content-repurpose-engine') | Out-Null
Copy-Item (Join-Path $repo 'skills\content-repurpose-engine\SKILL.md') (Join-Path $claudeDir 'skills\content-repurpose-engine\SKILL.md') -Force

Write-Host ""
Write-Host "content-repurpose-engine installed into $claudeDir"
Write-Host "Restart Claude Code, then ask to 'repurpose this' (or /content-repurpose-engine)."
