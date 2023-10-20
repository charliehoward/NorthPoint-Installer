## -- Copyright (c) Charlie Howard 2023 All rights reserved


Write-Output "Cleaning up installation files..."
$DesktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$DesktopPath\Computer Repair Centre Installer.exe"
Remove-Item 'C:\Computer Repair Centre\*.ico'
Remove-Item 'C:\Computer Repair Centre\*.msi'
Remove-Item 'C:\Computer Repair Centre\*.exe'
Remove-Item 'C:\Computer Repair Centre\*.zip'
Remove-Item 'C:\Computer Repair Centre\*.Appx'
Remove-Item 'C:\Computer Repair Centre\*.msixbundle'
Remove-Item 'C:\Computer Repair Centre\computerRepairCentreInstaller.ps1'
Remove-Item 'C:\Computer Repair Centre\deleteFilesTask.ps1'
Unregister-ScheduledTask -TaskName "Computer Repair Centre Delete Files" -Confirm:$false
Write-Output "Finished cleaning up installation files..."
Get-Date -Format "yyyy/MM/dd - hh:mm" | Out-File -FilePath "C:\Computer Repair Centre\Installation Date.log"
Start-Sleep 5
Set-ItemProperty -Path "C:\Computer Repair Centre\Installation Date.log" -Name IsReadOnly -Value $true