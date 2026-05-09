param(
    [Parameter(Mandatory = $true)]
    [string]$Message
)

Set-Location "$PSScriptRoot\.."

git add .
git commit -m $Message
git push
