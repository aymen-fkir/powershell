Add-Type -AssemblyName System.Windows.Forms
Start-Process explorer.exe -ArgumentList 'Shell:::{2559a1f3-21d7-11d4-bdaf-00c04f60b9f0}' -Wait
[System.Windows.Forms.SendKeys]::SendWait('msiexec')
[System.Windows.Forms.SendKeys]::SendWait('{ENTER}')
