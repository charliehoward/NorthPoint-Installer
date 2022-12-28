## -- Copyright (c) Charlie Howard 2023 All rights reserved


$taskPathDelete = "\"
$taskTriggerDelete= New-ScheduledTaskTrigger -AtLogon
$taskActionDelete= New-ScheduledTaskAction -Execute "powershell.exe" -Argument '-File "C:\Computer Repair Centre\deleteFiles.ps1"'
$taskSettingsDelete = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries
Register-ScheduledTask -TaskPath $taskPathDelete -TaskName "Computer Repair Centre Delete Files" -Trigger $taskTriggerDelete -Action $taskActionDelete -Settings $taskSettingsDelete -RunLevel Highest