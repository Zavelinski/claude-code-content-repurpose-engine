# Remove the content-repurpose-engine skill from ~/.claude (or $env:CLAUDE_CONFIG_DIR).
$ErrorActionPreference = 'Stop'
$claudeDir = if ($env:CLAUDE_CONFIG_DIR) { $env:CLAUDE_CONFIG_DIR } else { Join-Path $HOME '.claude' }
Remove-Item -Recurse -Force (Join-Path $claudeDir 'skills\content-repurpose-engine') -ErrorAction SilentlyContinue
Write-Host "content-repurpose-engine uninstalled from $claudeDir."
