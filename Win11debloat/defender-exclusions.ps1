# Setup Windows Defender common exclusion

Write-Host "Excluding paths..."
#Add-MpPreference -ExclusionPath "$env:appdata\npm"
#Add-MpPreference -ExclusionPath "$env:appdata\nvm"

# Exclude folders path(s)...
Add-MpPreference -ExclusionPath "C:\Users\Admin\AppData\Local\Temp"
Add-MpPreference -ExclusionPath "C:\ProgramData\EvolveOS"

Write-Host "Excluding processes..."
(
    "EvolveOS.exe",
    "init.exe"
) | ForEach-Object {Add-MpPreference -ExclusionProcess $_}