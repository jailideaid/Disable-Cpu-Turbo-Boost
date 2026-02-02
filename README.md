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

📂 Manual Usage
Download boostmode.ps1
Right-click → Run with PowerShell (Admin)

🖥 Menu Options
