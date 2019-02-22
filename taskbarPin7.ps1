## -- Copyright (c) Charlie Howard 2016-2019 All rights reserved


Param
(
    [Parameter(Mandatory=$true)]
    [Alias('pin')]
    [String[]]$PinItems
)

$Shell = New-Object -ComObject Shell.Application
$Desktop = $Shell.NameSpace(0X0)

Foreach($item in $PinItems)
{
    If(Test-Path -Path $item)
    {
        
        
        $itemLnk = $Desktop.ParseName($item)
        
        $Flag=0
        $itemVerbs = $itemLnk.Verbs()
        Foreach($itemVerb in $itemVerbs)
        {
            If($itemVerb.Name.Replace("&","") -match "Pin to Taskbar")
            {
                $itemVerb.DoIt()
				$Flag=1
            }
        }
        $itemName = (Get-Item -Path $item).Name
		
		If($Flag -eq 1)
        {
            Write-Host "Pin '$itemName' file to taskbar successfully." -ForegroundColor Green
        }
        Else
        {
            Write-Host "Failed to pin '$itemName' file to taskbar." -ForegroundColor Red
        }
     }
    Else
    {
        Write-Warning "Cannot find path '$item' because it does not exist."
    }
}
