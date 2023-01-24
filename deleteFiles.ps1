## -- Copyright (c) Charlie Howard 2023 All rights reserved


$DesktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item "$DesktopPath\Computer Repair Centre Installer.exe"
Remove-Item 'C:\Computer Repair Centre\*.ico'
Remove-Item 'C:\Computer Repair Centre\*.msi'
Remove-Item 'C:\Computer Repair Centre\*.exe'
Remove-Item 'C:\Computer Repair Centre\*.zip'
Remove-Item 'C:\Computer Repair Centre\*.Appx'
Remove-Item 'C:\Computer Repair Centre\*.msixbundle'
Remove-Item 'C:\Computer Repair Centre\bingWallpaperInitial.ps1'
Remove-Item 'C:\Computer Repair Centre\computerRepairCentreInstaller.ps1'
Remove-Item 'C:\Computer Repair Centre\deleteFilesTask.ps1'
Remove-Item Remove-Item -Recurse -Force "C:\Computer Repair Centre\Office2007"
Unregister-ScheduledTask -TaskName "Computer Repair Centre Delete Files" -Confirm:$false