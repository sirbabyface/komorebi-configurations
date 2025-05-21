New-Item -ItemType Directory -Force -Path .\komorebi
New-Item -ItemType Directory -Force -Path .\yasb

Copy-Item -Path "$env:USERPROFILE\komorebi.ahk" -Destination .\komorebi\
Copy-Item -Path "$env:USERPROFILE\komorebi.json" -Destination .\komorebi\
Copy-Item -Path "$env:USERPROFILE\.config\yasb\config.yaml" -Destination .\yasb\
Copy-Item -Path "$env:USERPROFILE\.config\yasb\styles.css" -Destination .\yasb\

