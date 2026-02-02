# ================================
# Processor Performance Boost Mode
# ================================

$regPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\be337238-0d82-4146-a960-4f3749d470c7"

function Check-Admin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
    if (-not $currentUser.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
        Write-Host "Please run PowerShell as Administrator!" -ForegroundColor Red
        exit
    }
}

function Show-Menu {
    Clear-Host
    Write-Host "==================================" -ForegroundColor Cyan
    Write-Host " Processor Performance Boost Mode "
    Write-Host "==================================" -ForegroundColor Cyan
    Write-Host "1. Show Boost Mode"
    Write-Host "2. Hide Boost Mode"
    Write-Host "0. Exit"
    Write-Host ""
}

function Enable-Boost {
    Set-ItemProperty -Path $regPath -Name Attributes -Type DWord -Value 2
    Write-Host "Boost Mode is now VISIBLE" -ForegroundColor Green
}

function Disable-Boost {
    Set-ItemProperty -Path $regPath -Name Attributes -Type DWord -Value 1
    Write-Host "Boost Mode is now HIDDEN" -ForegroundColor Yellow
}

Check-Admin

do {
    Show-Menu
    $choice = Read-Host "Select option"

    switch ($choice) {
        "1" { Enable-Boost }
        "2" { Disable-Boost }
        "0" { Write-Host "Exiting..." ; break }
        default { Write-Host "Invalid option!" -ForegroundColor Red }
    }

    if ($choice -ne "0") {
        Write-Host ""
        Pause
    }

} while ($choice -ne "0")
