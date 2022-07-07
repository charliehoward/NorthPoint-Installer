## -- Copyright (c) Charlie Howard 2016-2022 All rights reserved


$DesktopPath = [Environment]::GetFolderPath("Desktop")
Remove-Item '$DesktopPath\Computer Repair Centre Installer.exe'
Remove-Item 'C:\Computer Repair Centre\*.ico'
Remove-Item 'C:\Computer Repair Centre\*.exe'
Remove-Item 'C:\Computer Repair Centre\*.zip'
Remove-Item 'C:\Computer Repair Centre\*.xml'
Remove-Item 'C:\Computer Repair Centre\*.js'
Remove-Item 'C:\Computer Repair Centre\*.cfg'
Remove-Item 'C:\Computer Repair Centre\bingWallpaperInitial.ps1'
Remove-Item 'C:\Computer Repair Centre\chromeExtension.ps1'
Remove-Item 'C:\Computer Repair Centre\computerRepairCentreInstaller.ps1'
Remove-Item 'C:\Computer Repair Centre\firefoxExtension.ps1'
Remove-Item 'C:\Computer Repair Centre\deleteFilesTask.ps1'
Unregister-ScheduledTask -TaskName "Computer Repair Centre Delete Files" -Confirm:$false