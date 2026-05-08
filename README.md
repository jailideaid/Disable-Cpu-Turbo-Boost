# Processor Performance Boost Mode – PowerShell Tool

A simple PowerShell script to **show or hide** the hidden  
**“Processor performance boost mode”** option in Windows Power Options.

This tool modifies a registry attribute to make the setting visible or hidden
inside **Advanced Power Settings**.

---

## ✨ Features

- Interactive PowerShell menu
- Show / Hide *Processor Performance Boost Mode*
- Administrator privilege check
- No restart required
- Safe (registry UI flag only)

---

## 📌 What is Processor Performance Boost Mode?

This setting controls how aggressively your CPU boosts its clock speed.
By default, Windows hides this option from the Power Options UI.

Available modes after enabling:
- Disabled
- Enabled
- Aggressive
- Efficient Aggressive

---

## 🚀 Usage (One-Line Command)

Run **PowerShell as Administrator**, then execute:

```powershell
irm https://raw.githubusercontent.com/jailideaid/Disable-Cpu-Turbo-Boost/refs/heads/main/disablecpuboost.ps1 | iex
```
<p align="center">
  <img src="https://github.com/user-attachments/assets/72e54be8-d9b4-46f6-a9c0-bfe527ef3fd9" width="500"/>
</p>
<p align="center">
  <img src="https://github.com/user-attachments/assets/98c09cdd-2dda-46ee-af77-d273e6547388" width="773"/>
</p>
<p align="center">
  <img src="https://github.com/user-attachments/assets/cc771090-de1e-4061-b7b7-fa7910c8232e" width="773"/>
</p>
<p align="center">
  <img src="https://github.com/user-attachments/assets/538c1d52-7c7e-4ed7-8e16-6ca8dc0b7bc3" width="773"/>
</p>
<p align="center">
  <img src="https://github.com/user-attachments/assets/103c3dfb-a927-4db7-92f1-196181112ba5" width="773"/>
</p>
<p align="center">
  <img src="https://github.com/user-attachments/assets/a969d982-efea-477a-b9f6-07d2dc3e824e" width="773"/>
</p>
<p align="center">
  <img src="https://github.com/user-attachments/assets/50e01595-7328-4f40-bb8a-47c1ce5bc025" width="773"/>
</p>
<p align="center">
  <img src="https://github.com/user-attachments/assets/082f07d5-4b76-4c08-983e-894ad67ba03d" width="773"/>
</p>
<p align="center">
  <img src="https://github.com/user-attachments/assets/9f6ff41f-2749-4507-86a1-39a7ccb6dfc5" width="773"/>
</p>
<p align="center">
  <img src="https://github.com/user-attachments/assets/10b93a94-4365-4cd7-b5cc-c746b707f997" width="404"/>
</p>

## 📂 Manual Usage

Download boostmode.ps1

Right-click → Run with PowerShell (Admin)

## 🖥 Menu Options
1. Show Boost Mode
2. Hide Boost Mode
0. Exit

## 🔧 Where to Find the Setting (After Enabling)

Control Panel

→ Power Options

→ Change plan settings

→ Change advanced power settings

→ Processor power management

→ Processor performance boost mode

## 🛡 Safety Notes
- This script does NOT overclock your CPU
- Only unhides a built-in Windows power option
- Changes are reversible at any time

## 🧠 Technical Details
```Registry path used:
HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\
54533251-82be-4824-96c1-47b60b740d00\
be337238-0d82-4146-a960-4f3749d470c7
```

Value:

Attributes = 2 → Visible

Attributes = 1 → Hidden

## 🪟 Windows Compatibility

This script is compatible with the following Windows versions:

- ✅ **Windows 11** (All editions)
- ✅ **Windows 10** (All editions)
- ⚠️ **Windows 8 / 8.1** (Should work, but not officially tested)
- ❌ **Windows 7 and earlier** (Not supported)

### Notes:
- The script relies on Windows Power Management registry GUIDs
- These GUIDs exist in Windows 10 and Windows 11
- Actual boost behavior depends on:
  - CPU support
  - BIOS/UEFI configuration
  - OEM power management restrictions

> Showing the option does not guarantee aggressive boosting on all devices.

## 📜 License
MIT License – use, modify, and share freely. 

## ⭐ Credits
Created for educational purposes and advanced Windows power tuning.
If you find this useful, consider giving the repo a ⭐
