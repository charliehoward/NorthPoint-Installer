## -- Copyright (c) Charlie Howard 2016-2019 All rights reserved


Set-ExecutionPolicy Unrestricted -Force
New-Item -ItemType directory -Path "C:\NorthPoint\"
$mainURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/northPointInstaller.ps1"
$mainPath = "C:\NorthPoint\northPointInstaller.ps1"
Invoke-RestMethod -Uri $mainURL -OutFile $mainPath
& "C:\NorthPoint\northPointInstaller.ps1"
