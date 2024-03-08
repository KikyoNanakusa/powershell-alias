oh-my-posh init pwsh --config $env:POSH_THEMES_PATH/dracula.omp.json | Invoke-Expression

function openRemote {
    $origin = git config remote.origin.url
    if (-not $origin) {
        Write-Host "No remote origin found. Please ensure you are in a Git repository and a remote origin is set."
    } else {
        Start-Process $origin
    }
}

New-Alias -Name or openRemote
New-Alias -Name touch -Value New-Item 
New-Alias -Name ll -Value Get-ChildItem
New-Alias -Name la -Value Get-ChildItem -Force
New-Alias -Name grep -Value Select-String
