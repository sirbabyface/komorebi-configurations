oh-my-posh init pwsh | Invoke-Expression


# Define alias for typos
New-Alias gti git
New-Alias wingte winget

# Alias for simialr linux command
New-Alias grep Select-String
New-Alias mkdir md


#Alias for quick close terminal
Function CloseTerminal {
    exit
}
New-Alias x CloseTerminal

# Alias for aplications
New-Alias st "C:\Program Files\Sublime Text\sublime_text.exe"

# Winget alias
Function WingetUpdate {
    param(
        [Parameter(ValueFromRemainingArguments=$true)]
        [string[]]$AdditionalArgs # Captures any un-matched arguments
    )
    winget update  @AdditionalArgs
}
New-Alias wu WingetUpdate

Function WingetUninstall {
    param(
        [Parameter(ValueFromRemainingArguments=$true)]
        [string[]]$AdditionalArgs # Captures any un-matched arguments
    )
    winget uninstall  @AdditionalArgs
}
New-Alias wd WingetUninstall


# Path for custom powershell scripts
$env:Path += ";C:\stuff\software\scripts"


# Komerobi Stuff
$env:RUST_BACkTRACE="full"
#$env:KOMOREBI_AHK_EXE="C:\Users\TiagoCorreia\AppData\Local\Programs\AutoHotkey\v2\AutoHotkey64.exe"
New-Alias km komorebic
Function KomorebiStart {
    komorebic start --ahk
}
New-Alias km-start KomorebiStart

Function KomorebiStop {
    komorebic stop --ahk
}
New-Alias km-stop KomorebiStop

Function KomorebiReload {
    komorebic reload-configuration
}
New-Alias km-reload KomorebiReload

function KomorebiRestart {
    KomorebiStop
    KomorebiStart 
}
New-Alias km-restart KomorebiRestart



