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

## 📜 License
MIT License – use, modify, and share freely. 

## ⭐ Credits
Created for educational purposes and advanced Windows power tuning.
If you find this useful, consider giving the repo a ⭐
