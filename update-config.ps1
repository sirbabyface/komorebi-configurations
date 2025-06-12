New-Item -ItemType Directory -Force -Path $env:USERPROFILE\.config\yasb\

Copy-Item -Path ".\komorebi\komorebi.ahk" -Destination "$env:USERPROFILE\komorebi.ahk"
Copy-Item -Path ".\komorebi\komorebi.json" -Destination "$env:USERPROFILE\komorebi.json"
Copy-Item -Path ".\yasb\config.yaml" -Destination $env:USERPROFILE\.config\yasb\
Copy-Item -Path ".\yasb\styles.css" -Destination $env:USERPROFILE\.config\yasb\
Copy-Item -Path ".\Microsoft.PowerShell_profile.ps1" -Destination "$PROFILE"

