## -- Copyright (c) Charlie Howard 2016-2018 All rights reserved


Set-ExecutionPolicy Unrestricted -Force
Remove-Item "C:\NorthPoint" -Recurse -Force
New-Item -ItemType directory -Path "C:\NorthPoint\"
<<<<<<< HEAD
$mainURL = "https://github.com/charliehoward/NorthPoint-Installer/northPointInstaller.ps1"
=======
$mainURL = "https://files.deanpcmad.com/northpoint/northPointInstaller.ps1"
>>>>>>> master
$mainPath = "C:\NorthPoint\northPointInstaller.ps1"
Invoke-RestMethod -Uri $mainURL -OutFile $mainPath
& "C:\NorthPoint\northPointInstaller.ps1"