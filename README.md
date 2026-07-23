### 📊 MuiCache Parser Execution

Run the MuiCache analysis script directly via CMD/PowerShell with elevated privileges:

1. ⚙️ Open **Command Prompt** (CMD) as **Administrator**.
2. 📋 Copy and execute the following command:

```cmd
powershell Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass && powershell Invoke-Expression (Invoke-RestMethod [https://raw.githubusercontent.com/iTzPieros/MuiCache-Parser/refs/heads/main/MuiCache.Ps1](https://raw.githubusercontent.com/iTzPieros/MuiCache-Parser/refs/heads/main/MuiCache.Ps1))
