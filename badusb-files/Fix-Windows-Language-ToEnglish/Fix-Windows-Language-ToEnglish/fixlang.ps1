# fixlang.ps1
# Changes Windows 11 system language to English US
# Run with: powershell -ExecutionPolicy Bypass -File D:\fixlang.ps1

# Set system locale
Set-WinSystemLocale en-US

# Set user language list to English US only
Set-WinUserLanguageList en-US -Force

# Set UI language override
Set-WinUILanguageOverride -Language en-US

# Set home location to United States
Set-WinHomeLocation -GeoId 244

# Apply culture to system
Set-Culture en-US

Write-Host "Language settings changed to English US successfully." -ForegroundColor Green
Write-Host "Restarting in 5 seconds..." -ForegroundColor Yellow

Start-Sleep -Seconds 5
Restart-Computer -Force
