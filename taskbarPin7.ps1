## -- Copyright (c) Charlie Howard 2016-2020 All rights reserved


param
(
	[Parameter(Mandatory = $true)]
	[Alias('pin')]
	[String[]]$PinItems
)

$Shell = New-Object -ComObject Shell.Application
$Desktop = $Shell.Namespace(0X0)

foreach ($item in $PinItems)
{
	if (Test-Path -Path $item)
	{


		$itemLnk = $Desktop.ParseName($item)

		$Flag = 0
		$itemVerbs = $itemLnk.Verbs()
		foreach ($itemVerb in $itemVerbs)
		{
			if ($itemVerb.Name.Replace("&","") -match "Pin to Taskbar")
			{
				$itemVerb.DoIt()
				$Flag = 1
			}
		}
		$itemName = (Get-Item -Path $item).Name

		if ($Flag -eq 1)
		{
			Write-Host "Pin '$itemName' file to taskbar successfully." -ForegroundColor Green
		}
		else
		{
			Write-Host "Failed to pin '$itemName' file to taskbar." -ForegroundColor Red
		}
	}
	else
	{
		Write-Warning "Cannot find path '$item' because it does not exist."
	}
}
