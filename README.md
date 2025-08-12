# komorebi-configurations

A minimal, opinionated set of configuration files for the komorebi tiling window manager on Windows.

This repo also includes configuration for the YASB taskbar, so you can keep your window manager and taskbar setup in one place.

Use this repo to version, share, and quickly bootstrap your komorebi and YASB setup across machines.


## Prerequisites
- Windows 10/11
- PowerShell 7+
- komorebi and its CLI installed (via winget, Scoop, or Chocolatey)
- Optional: YASB taskbar (if you use the included YASB configuration)
  - winget
    - winget install --id LGUG2Z.komorebi -e
  - Scoop
    - scoop install extras/komorebi
  - Chocolatey
    - choco install komorebi

If you’re not using a package manager yet:
- Scoop: https://scoop.sh
- Chocolatey: https://chocolatey.org


## Get started
1) Clone this repository
- git clone https://github.com/your-username/komorebi-configurations.git

2) Choose how you want to use the configs
- Recommended: create a symlink from your config location to this repo so updates are automatic
- Alternative: use the provided PowerShell scripts (no symlinks required):
  - ./get-config.ps1    # copies repo configs into your local komorebi config directory
  - ./update-config.ps1 # copies your local komorebi config back into this repo
- Or simply copy the files manually (easier, but you’ll have to copy again when things change)

3) Reload komorebi to apply changes
- After linking/copying, restart or reload komorebi so the new config is picked up


## Linking on Windows (PowerShell)
Developer Mode or admin privileges are typically required for symlinks.

Example: link your komorebi config directory to this repo’s folder
- $repo = "$(Resolve-Path .)"
- $target = "$HOME/.config/komorebi"
- New-Item -ItemType Directory -Force -Path (Split-Path $target) | Out-Null
- if (Test-Path $target) { Remove-Item $target -Recurse -Force }
- New-Item -ItemType SymbolicLink -Path $target -Target $repo | Out-Null

Adjust paths if you prefer a different location.


## Using helper scripts (no symlinks)
If you prefer not to use symbolic links, you can use the included PowerShell scripts. These are primarily for komorebi configs, but you can adapt them for YASB as well (see notes below):

- ./get-config.ps1
  - Action: copies the configuration from this repo into your local komorebi config directory (e.g., $HOME/.config/komorebi)
  - Use when: you’ve updated the repo and want those changes applied locally
  - Example (PowerShell):
    - ./get-config.ps1

- ./update-config.ps1
  - Action: copies your current local komorebi configuration back into this repo
  - Use when: you’ve tweaked the live config and want to save/version those changes here
  - Example (PowerShell):
    - ./update-config.ps1

Notes:
- Run PowerShell with appropriate permissions if accessing protected paths
- Review the scripts before running to understand the exact copy behavior
- To support YASB with these scripts, adjust the source/target paths accordingly (see next section)

## YASB taskbar configuration
This repository also contains configuration for the YASB taskbar. You can manage it similarly to komorebi—either via symlinks or by copying files.

### Option A: Symlink YASB config directory (PowerShell)
Example variables (adjust as needed):
- $repoYasb = "$(Resolve-Path ./yasb)"     # path to YASB config in this repo
- $yasbTarget = "$HOME/.config/yasb"       # example target location; change to your YASB config path

Commands:
- New-Item -ItemType Directory -Force -Path (Split-Path $yasbTarget) | Out-Null
- if (Test-Path $yasbTarget) { Remove-Item $yasbTarget -Recurse -Force }
- New-Item -ItemType SymbolicLink -Path $yasbTarget -Target $repoYasb | Out-Null

Note: The actual YASB config directory may differ depending on your installation. Update $yasbTarget to match your environment.

### Option B: Copy using helper scripts (adapted)
You can adapt ./get-config.ps1 and ./update-config.ps1 to also handle YASB by:
- Adding a second copy routine that maps repo ./yasb to your local YASB config directory
- Guarding with flags or prompts if you want to choose komorebi, YASB, or both

Example usage once adapted:
- ./get-config.ps1     # copies repo YASB (and komorebi) configs locally
- ./update-config.ps1  # copies local YASB (and komorebi) configs back to the repo

## Applying changes
- Restart komorebi from your usual startup method (e.g., scheduled task, Startup folder, or manual start)
- Or reload it using your preferred approach

Tip: Keep your config changes small and test after each change.


## Suggested workflow
- Make edits in a feature branch
- Test locally
- Commit with a clear message
- Merge to main when stable


## Troubleshooting
- If changes don’t seem to apply, try fully restarting komorebi
- If symlinks are blocked, enable Windows Developer Mode or run PowerShell as Administrator
- Ensure paths do not contain unexpected characters or permissions issues


## Contributing / Personalization
This repo is tailored for personal use, but you can fork and adapt it. Consider adding:
- Per-app rules and exclusions
- Workspace/monitor defaults
- Startup scripts to launch your essential apps
- Hotkey integration (e.g., AutoHotkey, PowerToys, or your launcher of choice)


## License
MIT (or your preferred license).
