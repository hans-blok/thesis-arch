# Sync all agent prompt files to .github/prompts/
# Source: agents/{agent-slug}/prompts/*.prompt.md
# Destination: .github/prompts/{agent-slug}.{intent}.prompt.md

$root = "$PSScriptRoot\.."
$target = Join-Path $root ".github\prompts"

New-Item -ItemType Directory -Force -Path $target | Out-Null

$copied = 0
$skipped = 0

Get-ChildItem -Path "$root\agents" -Directory | ForEach-Object {
    $agentSlug = $_.Name
    $promptsDir = Join-Path $_.FullName "prompts"

    if (-not (Test-Path $promptsDir)) { return }

    Get-ChildItem -Path $promptsDir -Filter "*.prompt.md" | ForEach-Object {
        $filename = $_.Name

        # Normalize: prefix with agent-slug if not already present
        if ($filename -notlike "$agentSlug.*") {
            $destName = "$agentSlug.$filename"
        } else {
            $destName = $filename
        }

        $dest = Join-Path $target $destName
        Copy-Item -Path $_.FullName -Destination $dest -Force
        Write-Host "Copied: $agentSlug/prompts/$filename -> .github/prompts/$destName"
        $copied++
    }
}

Write-Host ""
Write-Host "$copied prompt(s) synced to .github/prompts/"
