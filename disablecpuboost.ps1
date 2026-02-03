# ==========================================
# Processor Performance Boost Mode Controller
# Windows 10 & 11 Supported
# ==========================================

$regPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\be337238-0d82-4146-a960-4f3749d470c7"

# -------------------------------
# Check Administrator Privileges
# -------------------------------
function Check-Admin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal(
        [Security.Principal.WindowsIdentity]::GetCurrent()
    )

    if (-not $currentUser.IsInRole(
        [Security.Principal.WindowsBuiltInRole]::Administrator
    )) {
        Write-Host "Please run PowerShell as Administrator!" -ForegroundColor Red
        exit
    }
}

# -------------------------------
# Check Windows Compatibility
# -------------------------------
function Check-WindowsSupport {
    $os = Get-CimInstance Win32_OperatingSystem
    $version = [version]$os.Version

    # Windows 10 & 11 share Major version 10
    if ($version.Major -ne 10) {
        Write-Host "Unsupported Windows version detected!" -ForegroundColor Red
        Write-Host "This script supports Windows 10 and Windows 11 only." -ForegroundColor Yellow
        Write-Host "Detected OS: $($os.Caption) ($($os.Version))"
        exit
    }

    Write-Host "Supported OS detected: $($os.Caption)" -ForegroundColor Green
    Start-Sleep -Seconds 1
}

# -------------------------------
# Menu UI
# -------------------------------
function Show-Menu {
    Clear-Host
    Write-Host "==========================================" -ForegroundColor Cyan
    Write-Host " Processor Performance Boost Mode Tool "
    Write-Host "==========================================" -ForegroundColor Cyan
    Write-Host "1. Show Boost Mode"
    Write-Host "2. Hide Boost Mode"
    Write-Host "0. Exit"
    Write-Host ""
}

# -------------------------------
# Enable Boost Mode (Unhide)
# -------------------------------
function Enable-Boost {
    Set-ItemProperty -Path $regPath -Name Attributes -Type DWord -Value 2
    Write-Host "Boost Mode is now VISIBLE in Power Options." -ForegroundColor Green
}

# -------------------------------
# Disable Boost Mode (Hide)
# -------------------------------
function Disable-Boost {
    Set-ItemProperty -Path $regPath -Name Attributes -Type DWord -Value 1
    Write-Host "Boost Mode is now HIDDEN from Power Options." -ForegroundColor Yellow
}

# ===============================
# Main Execution
# ===============================
Check-Admin
Check-WindowsSupport

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
