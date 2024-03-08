oh-my-posh init pwsh --config $env:POSH_THEMES_PATH/dracula.omp.json | Invoke-Expression

function openRemote {
    $origin = git config remote.origin.url
    if ($origin -match "") {
        echo "No remote origin found"
    } else {
        Start $origin
    }
}

New-Alias -Name or openRemote
New-Alias -Name touch -Value New-Item 
New-Alias -Name ll -Value Get-ChildItem
New-Alias -Name la -Value Get-ChildItem -Force
New-Alias -Name grep -Value Select-String
