## -- Copyright (c) Charlie Howard 2016-2019 All rights reserved


Function New-FirefoxExtension {
    <#
    .SYNOPSIS
    Add extensions to Firefox. Does not enable them
    
    .PARAMETER ExtensionUri
    The extension download uri found by right-clicking download in the app store --> copy link address

    .PARAMETER ExtensionPath
    The path you wish to store extensions on the system

    .PARAMETER Hive
    Controls whether you write changes to HKEY_LOCAL_MACHINE, or HKEY_CURRENT_USER.
    HKLM affects every user of a machine, HKCU will affect only the primary user.
    Shared machines should use HKLM, whereas single-user machines are fine with HKCU.

    .EXAMPLE
    #Installs the uBlock Origin Add-On
    New-FirefoxExtension -ExtensionUri 'https://addons.mozilla.org/firefox/downloads/file/985780/ublock_origin-1.16.10-an+fx.xpi?src=dp-btn-primary' -ExtensionPath 'C:\FirefoxExtensions' -Hive HKLM

    .EXAMPLE
    #Use splatting to shorten the scroll of the parameters
    $params = @{
        'ExtensionUri' = 'https://addons.mozilla.org/firefox/downloads/file/985780/ublock_origin-1.16.10-an+fx.xpi?src=dp-btn-primary'
        'ExtensionPath' = 'C:\FirefoxExtensions'
        'Hive' = 'HKLM'
    }

    New-FirefoxExtension @params

    .EXAMPLE
    #Load Uri's from a file
    $Params = @{
        'ExtensionUri' = @(Get-Content C:\addons.txt)
        'ExtensionPath = 'C:\FirefoxExtensions'
        'Hive' = 'HKLM'
    }

    .EXAMPLE
    #Load function into scope
    Import-Module C:\Scripts\New-FirefoxExtension.ps1
    $params = @{
        'ExtensionUri' = 'https://addons.mozilla.org/firefox/downloads/file/985780/ublock_origin-1.16.10-an+fx.xpi?src=dp-btn-primary'
        'ExtensionPath' = 'C:\FirefoxExtensions'
        'Hive' = 'HKLM'
    }

    New-FirefoxExtension @params

    #>
    [cmdletBinding()]
    Param(
        [Parameter(Mandatory)]
        [string[]]$ExtensionUri,
        [Parameter(Mandatory)]
        [String]$ExtensionPath,
        [Parameter(Mandatory = $false)]
        [ValidateSet('HKCU', 'HKLM')]
        [string]$Hive
    )

    If (!(Test-Path $ExtensionPath)) {
        
        New-Item -ItemType Directory $ExtensionPath | Out-Null
    
    }

    Foreach ($Uri in $ExtensionUri) {

        #Store just the extension filename for later use
        #Thanks reddit user /u/ta11ow for the regex help!
        $Uri -match '(?<=/)(?<ExtensionName>[^/]+)(?=\?)'
        $Extension = $matches['ExtensionName']

        #Download the Extension and save it to the FireFoxExtensions folder
        Invoke-WebRequest -Uri $Uri -OutFile "C:\FirefoxExtensions\$Extension"

        #Now we have to manipulate the extension into the form that Mozilla dictates
        
        #Create a zip file from the xpi
        Get-ChildItem -Path $ExtensionPath | Foreach-Object { $NewName = $_.FullName -replace ".xpi", ".zip"
            Copy-Item -Path $_.FullName -Destination $NewName }

        #Depending on PS Version, expand the zip file
        If ($PSVersionTable.PSVersion.Major -ge 4) {
            
            Expand-Archive -Path (Get-ChildItem $ExtensionPath |
                    Where-Object { $_.Extension -eq '.zip'} |
                    Select-Object -ExpandProperty FullName) -DestinationPath $ExtensionPath
        }

        Else {

            [System.IO.Compression.ZipFile]::ExtractToDirectory((Get-ChildItem $ExtensionPath |
                        Where-Object { $_.Extension -eq '.zip'} |
                        Select-Object -ExpandProperty FullName), $ExtensionPath)

        }

        #convert the manifest file into a psobject
        $file = Get-Content "$ExtensionPath\manifest.json" | ConvertFrom-Json

        
        #store the author id
        $authorValue = $file.applications.gecko.id

        

        Rename-Item -Path $ExtensionPath\$($matches['ExtensionName']) -NewName "$authorValue.xpi"
        #Cleanup all the junk, leaving only the extension pack file behind
        Remove-Item -Path $ExtensionPath -Exclude *.xpi -Recurse -Force

        #Modify registry based on which Hive you selected
        Switch ($Hive) {
            
            'HKCU' {
                Switch ([environment]::Is64BitOperatingSystem) {
                    $true {
            
                        If (!(Test-Path "C:\Program Files\Mozilla Firefox\firefox.exe")) {
                            
                            $regKey = "HKCU:\Software\Wow6432Node\Mozilla\Firefox\Extensions"
                            New-ItemProperty -Path $regKey -Name $authorValue -Value "$ExtensionPath\$authorValue.xpi" -PropertyType String
                        }
                        
                        Else {
                            
                            $regKey = "HKCU:\Software\Mozilla\Firefox\Extensions"
                            New-ItemProperty -Path $regKey -Name $authorValue -Value "$ExtensionPath\$authorValue.xpi" -PropertyType String
                        }
                        
                    }
                    
                    $false {
                        
                        $regKey = "HKCU:\Software\Mozilla\Firefox\Extensions"
                        New-ItemProperty -Path $regKey -Name $authorValue -Value "$ExtensionPath\$authorValue.xpi" -PropertyType String
                    
                    }
                
                }#hkcu switch

            }#hkcu

            'HKLM' {
                Switch ([environment]::Is64BitOperatingSystem) {
                    $true {
            
                        If (Test-Path "C:\Program Files\Mozilla Firefox\firefox.exe") {
                            
                            $regKey = "HKLM:\Software\Mozilla\Firefox\Extensions"
                            New-ItemProperty -Path $regKey -Name $authorValue -Value "$ExtensionPath\$authorValue.xpi" -PropertyType String
                        }
                        
                        Else {
                            
                            $regKey = "HKLM:\Software\Wow6432Node\Mozilla\Firefox\Extensions"
                            
                            New-ItemProperty -Path $regKey -Name $authorValue -Value "$ExtensionPath\$authorValue.xpi" -PropertyType String
                        }
                        
                    }
                    
                    $false {
                        
                        $regKey = "HKLM:\Software\Mozilla\Firefox\Extensions"
                        New-ItemProperty -Path $regKey -Name $matches['ExtensionName'] -Value "$ExtensionPath\$($matches['ExtensionName'])" -PropertyType String
                    
                    }
                
                }#hklm switch
        
            }#hklm 
        }#end outer switch

    }#foreach

}#function