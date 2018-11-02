## -- Copyright (c) Charlie Howard 2016-2018 All rights reserved


Function New-ChromeExtension {
    [cmdletBinding()]
    Param(
        [Parameter(Mandatory)]
        [String[]]$ExtensionID,
        [Parameter(Mandatory)]
        [ValidateSet('Machine', 'User')]
        [String]$Mode

    )
    Foreach ($Extension in $ExtensionID) {
		$regLocation = 'Software\Policies\Google\Chrome\ExtensionInstallForcelist'
        Switch ($Mode) {
            'Machine' {
                If (!(Test-Path "HKLM:\$regLocation")) {
                    Write-Verbose -Message "No Registry Path, setting count to: 0"
                    [int]$Count = 0
                    Write-Verbose -Message "Count is now $Count" 
                    New-Item -Path "HKLM:\$regLocation" -Force
        
                }       
                Else {
                    Write-Verbose -Message "Keys found, counting them..."
                    [int]$Count = (Get-Item "HKLM:\$regLocation").Count
                    Write-Verbose -Message "Count is now $Count"
                }
            }          
            'User' {
                If (!(Test-Path "HKCU:\$regLocation")) {
                    
                    Write-Verbose -Message "No Registry Path, setting count to: 0"
                    [int]$Count = 0
                    Write-Verbose -Message "Count is now $Count" 
                    New-Item -Path "HKCU:\$regLocation" -Force
        
                }
                Else {
                    
                    Write-Verbose -Message "Keys found, counting them..."
                    [int]$Count = (Get-Item "HKCU:\$regLocation").Count
                    Write-Verbose -Message "Count is now $Count"
                }
            }
        }
        $regKey = $Count + 1
        Write-Verbose -Message "Creating reg key with value $regKey"
        $regData = "$Extension;https://clients2.google.com/service/update2/crx"
        Switch ($Mode) {            
            'Machine' { New-ItemProperty -Path "HKLM:\$regLocation" -Name $regKey -Value $regData -PropertyType STRING -Force }
            'User' { New-ItemProperty -Path "HKCU:\$regLocation" -Name $regKey -Value $regData -PropertyType STRING -Force }        
        }    
    }
}
