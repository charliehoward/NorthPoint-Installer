## -- Copyright (c) Charlie Howard 2016-2018 All rights reserved


## -- Download files

$taskbarpinURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/taskbarpin.vbs"
$taskbarpinPath = "C:\NorthPoint\taskbarPin.vbs"
$computerRepairCentreOEMURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/computerRepairCentre.bmp"
$computerRepairCentreOEMPath = "C:\NorthPoint\computerRepairCentre.bmp"
$computerRepairCentreIconURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/computerRepairCentre.ico"
$computerRepairCentreIconPath = "C:\NorthPoint\computerRepairCentre.ico"
$googleChromeURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/googleChrome.ico"
$googleChromePath = "C:\NorthPoint\googleChrome.ico"
$kasperskyInternetSecurityURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/kasperskyInternetSecurity.ico"
$kasperskyInternetSecurityPath = "C:\NorthPoint\kasperskyInternetSecurity.ico"
$libreOfficeURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/libreOffice.ico"
$libreOfficePath = "C:\NorthPoint\libreOffice.ico"
$mozillaFirefoxURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/mozillaFirefox.ico"
$mozillaFirefoxPath = "C:\NorthPoint\mozillaFirefox.ico"
$mozillaThunderbirdURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/mozillaThunderbird.ico"
$mozillaThunderbirdPath = "C:\NorthPoint\mozillaThunderbird.ico"
$skypeURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/skype.ico"
$skypePath = "C:\NorthPoint\skype.ico"
$teamViewerURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/teamViewer.ico"
$teamViewerPath = "C:\NorthPoint\teamViewer.ico"
$uBlockOriginURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/uBlockOrigin.ico"
$uBlockOriginPath = "C:\NorthPoint\uBlockOrigin.ico"
$vlcMediaPlayerURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/vlcMediaPlayer.ico"
$vlcMediaPlayerPath = "C:\NorthPoint\vlcMediaPlayer.ico"
$birthdayURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/birthday.gif"
$birthdayPath = "C:\NorthPoint\birthday.gif"
$wallpaperURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/wallpaper.ico"
$wallpaperPath = "C:\NorthPoint\wallpaper.ico"
$wallpapersURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/wallpapers.zip"
$wallpapersPath = "C:\NorthPoint\wallpapers.zip"
$themeSwitcher7URL = "https://github.com/charliehoward/NorthPoint-Installer/assets/themeSwitcher7.exe"
$themeSwitcher7Path = "C:\NorthPoint\themeSwitcher7.exe"
$themeSwitcher10URL = "https://github.com/charliehoward/NorthPoint-Installer/assets/themeSwitcher10.exe"
$themeSwitcher10Path = "C:\NorthPoint\themeSwitcher10.exe"
$windows7ThemeURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/northPoint7.theme"
$windows7ThemePath = "C:\NorthPoint\northPoint7.theme"
$windows10ThemeURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/northPoint10.theme"
$windows10ThemePath = "C:\NorthPoint\northPoint10.theme"
$iTunesURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/iTunes.ico"
$iTunesPath = "C:\NorthPoint\iTunes.ico"
$chromeExtensionURL = "https://github.com/charliehoward/NorthPoint-Installer/chromeExtension.ps1"
$chromeExtensionPath = "C:\NorthPoint\chromeExtension.ps1"
$firefoxExtensionURL = "https://github.com/charliehoward/NorthPoint-Installer/firefoxExtension.ps1"
$firefoxExtensionPath = "C:\NorthPoint\firefoxExtension.ps1"
$mozillaLocalSettingsURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/local-settings.js"
$mozillaLocalSettingsPath = "C:\NorthPoint\local-settings.js"
$mozillaConfigURL = "https://github.com/charliehoward/NorthPoint-Installer/assets/mozilla.cfg"
$mozillaConfigPath = "C:\NorthPoint\mozilla.cfg"
Invoke-RestMethod -Uri $computerRepairCentreIconURL -OutFile $computerRepairCentreIconPath
Invoke-RestMethod -Uri $googleChromeURL -OutFile $googleChromePath
Invoke-RestMethod -Uri $kasperskyInternetSecurityURL -OutFile $kasperskyInternetSecurityPath
Invoke-RestMethod -Uri $libreOfficeURL -OutFile $libreOfficePath
Invoke-RestMethod -Uri $mozillaFirefoxURL -OutFile $mozillaFirefoxPath
Invoke-RestMethod -Uri $mozillaThunderbirdURL -OutFile $mozillaThunderbirdPath
Invoke-RestMethod -Uri $skypeURL -OutFile $skypePath
Invoke-RestMethod -Uri $teamViewerURL -OutFile $teamViewerPath
Invoke-RestMethod -Uri $vlcMediaPlayerURL -OutFile $vlcMediaPlayerPath
Invoke-RestMethod -Uri $birthdayURL -OutFile $birthdayPath
Invoke-RestMethod -Uri $iTunesURL -OutFile $iTunesPath
Invoke-RestMethod -Uri $wallpaperURL -OutFile $wallpaperPath
Invoke-RestMethod -Uri $uBlockOriginURL -OutFile $uBlockOriginPath
$progressBar.Close()
$os = (Get-WmiObject -Class Win32_OperatingSystem).version
$ip = Invoke-RestMethod http://ipinfo.io/json | Select -exp ip
$date = Get-Date
$charlie = Get-Date -Day 06 -Month 04
$dean = Get-Date -Day 21 -Month 04
$howard = Get-Date -Day 16 -Month 05
$adam = Get-Date -Day 09 -Month 06
$steve = Get-Date -Day 24 -Month 06
$josh = Get-Date -Day 22 -Month 10
$user = $env:UserName
If ($ip -like '*82.0.43.224*') {
	$libreOfficeLocation = 0
	}
else {
	$libreOfficeLocation = 1
	}
function northPointInstaller {
	[reflection.assembly]::loadwithpartialname("System.Windows.Forms")
	[reflection.assembly]::loadwithpartialname("System.Drawing")
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$northPoint = New-Object System.Windows.Forms.Form
	$install = New-Object System.Windows.Forms.Button
	$progress = New-Object System.Windows.Forms.ListBox
	$crc = New-Object System.Windows.Forms.CheckBox
	$mozillaFirefox = New-Object System.Windows.Forms.CheckBox
	$mozillaThunderbird = New-Object System.Windows.Forms.CheckBox
	$googleChrome = New-Object System.Windows.Forms.CheckBox
	$kaspersky = New-Object System.Windows.Forms.CheckBox
	$vlc = New-Object System.Windows.Forms.CheckBox
	$libreOffice = New-Object System.Windows.Forms.CheckBox
	$skype = New-Object System.Windows.Forms.CheckBox
	$teamViewer = New-Object System.Windows.Forms.CheckBox
	$iTunes = New-Object System.Windows.Forms.CheckBox
	$uBlockOrigin = New-Object System.Windows.Forms.CheckBox
	$wallpaper = New-Object System.Windows.Forms.CheckBox
	$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
	$b1= $false
	$b2= $false
	$b3= $false
	

	## -- Install button click

	$handler_install_Click=
		{
		$progress.Items.Add("Copyright (c) Charlie Howard 2016-2018 All rights reserved.")
		$progress.SelectedIndex = $progress.Items.Count - 1;
		$progress.SelectedIndex = -1;
		if (($date.Day -eq $charlie.Day -and $date.Month -eq $charlie.Month) -or ($date.Day -eq $dean.Day -and $date.Month -eq $dean.Month) -or ($date.Day -eq $howard.Day -and $date.Month -eq $howard.Month) -or ($date.Day -eq $adam.Day -and $date.Month -eq $adam.Month) -or ($date.Day -eq $steve.Day -and $date.Month -eq $steve.Month) -or ($date.Day -eq $josj.Day -and $date.Month -eq $josh.Month)) {
			$CreateDialog = {
				Param ($Form)
				Start-Sleep -s 30
				$Form.Close()
				}
			Add-Type -AssemblyName System.Windows.Forms
			$birthday = New-Object System.Windows.Forms.Form
			$birthday.Text = ""
			$birthday.TopMost = $true
			$birthday.Width = 450
			$birthday.Height = 240
			$birthday.Icon = "C:\NorthPoint\northPoint.ico"
			$birthdayGIF = New-Object system.windows.Forms.PictureBox
			$birthdayGIF.Width = 480
			$birthdayGIF.Height = 332
			$birthdayGIF.ImageLocation = "C:\NorthPoint\birthday.gif"
			$birthdayGIF.location = new-object system.drawing.point(-30,-70)
			$birthday.controls.Add($birthdayGIF)
			$Runspace = [RunspaceFactory]::CreateRunspace()
			$PowerShell = [PowerShell]::Create()
			$PowerShell.Runspace = $Runspace
			$Runspace.Open()
			$Params =
			@{
				Form = $birthday
			}
			$PowerShell.AddScript($CreateDialog).AddParameters($Params)
			$AsyncObject = $PowerShell.BeginInvoke()
			$birthday.ShowDialog()
			$PowerShell.EndInvoke($AsyncObject)
			$PowerShell.Dispose()
		}
		if ($crc.Checked)	{
			$progress.Items.Add("Computer Repair Centre OEM information is checked."  )
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
		    $progress.Items.Add("Installing Computer Repair Centre OEM information...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			Invoke-RestMethod -Uri $computerRepairCentreOEMURL -OutFile $computerRepairCentreOEMPath
			Remove-Item "C:\Computer Repair Centre" -Recurse -Force
			New-Item -ItemType directory -Path "C:\NorthPoint"
			if ($ip -like '*212.159.116.68*') {
				$progress.Items.Add("Installer being run from Romsey.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				Set-ItemProperty -path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -name Logo -value "C:\NorthPoint\computerRepairCentre.bmp"
				Set-ItemProperty -path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -name Manufacturer -value "Computer Repair Centre"
				Set-ItemProperty -path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -name SupportHours -value "Mon-Sat 9:15am-5pm - Wed 9:15am-4pm"
				Set-ItemProperty -path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -name SupportPhone -value "01794 517142"
				Set-ItemProperty -path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -name SupportURL -value "https://www.firstforitrepairs.co.uk"
			}
		elseIf ($ip -like '*82.0.43.224*') {
			$progress.Items.Add("Installer being run from Chandlers Ford.")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			Set-ItemProperty -path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -name Logo -value "C:\NorthPoint\computerRepairCentre.bmp"
			Set-ItemProperty -path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -name Manufacturer -value "Computer Repair Centre"
			Set-ItemProperty -path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -name SupportHours -value "Mon-Fri 9am-5pm - Sat 9am-4pm"
			Set-ItemProperty -path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -name SupportPhone -value "08712 244129"
			Set-ItemProperty -path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -name SupportURL -value "https://www.brmcomputers.co.uk"
			}
			$progress.Items.Add("Completed installation of Computer Repair Centre OEM information.")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			}
		$progress.Items.Add("Installing all requisites...")
		$progress.SelectedIndex = $progress.Items.Count - 1;
		$progress.SelectedIndex = -1;
		iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
		choco install dotnet4.5 -y
		choco install dotnet4.6.1 -y
		choco install powershell -y
		choco install 7zip.install -y --ignore-checksum
		$progress.Items.Add("Completed installation of all requisites...")
		$progress.SelectedIndex = $progress.Items.Count - 1;
		$progress.SelectedIndex = -1;
	  if ($googleChrome.Checked)	{
			$progress.Items.Add("Google Chrome is checked."  )
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			$progress.Items.Add("Installing Google Chrome...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			Invoke-RestMethod -Uri $chromeExtensionURL -OutFile $ChromeExtensionPath
			choco install googlechrome -y --ignore-checksum
			$Programs = choco list --localonly
			if ($Programs -like '*GoogleChrome*') {
				$progress.Items.Add("Completed installation of Google Chrome.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			else {
				$progress.Items.Add("The installation of Google Chrome has failed.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			}
	  if ($iTunes.Checked)	{
			$progress.Items.Add("iTunes is checked."  )
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			$progress.Items.Add("Installing iTunes...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			choco install itunes -y --ignore-checksum
			$Programs = choco list --localonly
			if ($Programs -like '*iTunes*') {
				$progress.Items.Add("Completed installation of iTunes.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			else {
				$progress.Items.Add("The installation of iTunes has failed.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			}
		if ($kaspersky.Checked)	{
			$progress.Items.Add("Kaspersky Internet Security 2019 is checked."  )
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			$progress.Items.Add("Installing Kaspersky Internet Security 2019...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			choco install kis -y --ignore-checksum
			$Programs = choco list --localonly
			if ($Programs -like '*kis*') {
				$progress.Items.Add("Completed installation of Kaspersky Internet Security 2019.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				$progress.Items.Add("Uninstalling Kaspersky Secure Connection...")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				$kasperskySecureConnection = gci "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall" | ForEach { gp $_.PSPath } | ? { $_ -Match "Kaspersky Secure Connection" } | Select UninstallString
				$kasperskySecureConnection = $kasperskySecureConnection.UninstallString -Replace "msiexec.exe","" -Replace "/I","" -Replace "/X",""
				$kasperskySecureConnection = $kasperskySecureConnection.Trim()
				$kasperskySecureConnection = $kasperskySecureConnection | Select -Skip 1
				cmd /c "C:\Windows\SysWOW64\msiexec.exe /i$kasperskySecureConnection REMOVE=ALL /passive"
				$progress.Items.Add("Completed uninstallation of Kaspersky Secure Connection.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			else {
				$progress.Items.Add("The installation of Kaspersky Internet Security 2019 has failed.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			}
		if ($libreOffice.Checked)	{
			$progress.Items.Add("LibreOffice is checked."  )
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			$progress.Items.Add("Installing LibreOffice...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			choco install libreoffice -y --ignore-checksum
			$Programs = choco list --localonly
			if ($Programs -like '*libreoffice*') {
				$progress.Items.Add("Completed installation of LibreOffice.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			else {
				$progress.Items.Add("The installation of LibreOffice has failed.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			}
	    if ($mozillaFirefox.Checked)	{
			$progress.Items.Add("Mozilla Firefox Quantum is checked."  )
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			$progress.Items.Add("Installing Mozilla Firefox Quantum...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			Invoke-RestMethod -Uri $firefoxExtensionURL -OutFile $firefoxExtensionPath
			Invoke-RestMethod -Uri $mozillaConfigURL -OutFile $mozillaConfigPath
			Invoke-RestMethod -Uri $mozillaLocalSettingsURL -OutFile $mozillaLocalSettingsPath
			choco install firefox -y --ignore-checksum
			$Programs = choco list --localonly
			if ($Programs -like '*Firefox*') {
				$progress.Items.Add("Completed installation of Mozilla Firefox Quantum.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			else {
				$progress.Items.Add("The installation of Mozilla Firefox Quantum has failed.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			}
		if ($mozillaThunderbird.Checked)	{
			$progress.Items.Add("Mozilla Thunderbird is checked."  )
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			$progress.Items.Add("Installing Mozilla Thunderbird...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			choco install thunderbird -y --ignore-checksum
			$Programs = choco list --localonly
			if ($Programs -like '*thunderbird*') {
				$progress.Items.Add("Completed installation of Mozilla Thunderbird.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			else {
				$progress.Items.Add("The installation of Mozilla Thunderbird has failed.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			}
		if ($skype.Checked)	{
			$progress.Items.Add("Skype is checked."  )
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			$progress.Items.Add("Installing Skype...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			choco install skype -y --ignore-checksum
			$Programs = choco list --localonly
			if ($Programs -like '*skype*') {
				$progress.Items.Add("Completed installation of Skype.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			else {
				$progress.Items.Add("The installation of Skype has failed.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			}
		if ($teamViewer.Checked)	{
			$progress.Items.Add("TeamViewer is checked."  )
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			$progress.Items.Add("Installing TeamViewer...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			choco install teamviewer -y --ignore-checksum
			$Programs = choco list --localonly
			if ($Programs -like '*teamviewer*') {
				$progress.Items.Add("Completed installation of TeamViewer.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			else {
				$progress.Items.Add("The installation of TeamViewer has failed.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			}
		if ($uBlockOrigin.Checked)	{
			$progress.Items.Add("uBlockOrigin is checked."  )
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			if ($googleChrome.Checked)	{
				$progress.Items.Add("Installing uBlockOrigin on Google Chrome...")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				Import-Module C:\NorthPoint\chromeExtension.ps1
				New-ChromeExtension -ExtensionID 'cjpalhdlnbpafiamejdnhcphjbkeiagm' -Mode Machine
				$progress.Items.Add("The installation of uBlockOrigin on Google Chrome has completed.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			if ($mozillaFirefox.Checked)	{
				$progress.Items.Add("Installing uBlockOrigin on Mozilla Firefox...")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				New-Item -ItemType directory -Path "C:\Program Files\Mozilla Firefox\defaults\pref" -Force
				Copy-Item "C:\NorthPoint\mozilla.cfg" -Destination "C:\Program Files\Mozilla Firefox" -Force
				Copy-Item "C:\NorthPoint\local-settings.js" -Destination "C:\Program Files\Mozilla Firefox\defaults\pref" -Force	
				Import-Module C:\NorthPoint\firefoxExtension.ps1	
				$firefoxParams = @{
					'ExtensionUri' = 'https://addons.mozilla.org/firefox/downloads/file/985780/ublock_origin-1.16.10-an+fx.xpi?src=dp-btn-primary'
					'ExtensionPath' = 'C:\NorthPoint'
					'Hive' = 'HKLM'
					}
				New-FirefoxExtension @firefoxParams
				$progress.Items.Add("The installation of uBlockOrigin on Mozilla Firefox has completed.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			}
		if ($vlc.Checked)	{
			$progress.Items.Add("VLC Media Player is checked."  )
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			$progress.Items.Add("Installing VLC Media Player...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			choco install vlc -y --ignore-checksum
			$Programs = choco list --localonly
			if ($Programs -like '*vlc*') {
				$progress.Items.Add("Completed installation of VLC Media Player.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			else {
				$progress.Items.Add("The installation of VLC Media Player has failed.")
				$progress.SelectedIndex = $progress.Items.Count - 1;
				$progress.SelectedIndex = -1;
				}
			}
		if ($os -like '*6.1*')	{
			$progress.Items.Add("This computer is running Windows 7.")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			$progress.Items.Add("Setting taskbar icons...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			Invoke-RestMethod -Uri $taskbarpinURL -OutFile $taskbarpinPath
			Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" -Name "Favorites"
			& "C:\NorthPoint\taskbarPin.vbs" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
			& "C:\NorthPoint\taskbarPin.vbs" "C:\Program Files\Mozilla Firefox\firefox.exe"
			& "C:\NorthPoint\taskbarPin.vbs" "C:\Windows\explorer.exe"
			Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\Shell\Bags\1\Desktop" -Name FFLAGS -value 1075839525 -Force
			if ($wallpaper.Checked)	{
					$progress.Items.Add("Set wallpapers is checked."  )
					$progress.SelectedIndex = $progress.Items.Count - 1;
					$progress.SelectedIndex = -1;
					$progress.Items.Add("Setting wallpapers...")
					$progress.SelectedIndex = $progress.Items.Count - 1;
					$progress.SelectedIndex = -1;
					Invoke-RestMethod -Uri $wallpapersURL -OutFile $wallpapersPath
					Invoke-RestMethod -Uri $themeSwitcher7URL -OutFile $themeSwitcher7Path
					Invoke-RestMethod -Uri $windows7ThemeURL -OutFile $windows7ThemePath
					& 'C:\Program Files\7-Zip\7z.exe' e "C:\NorthPoint\wallpapers.zip" "-oC:\NorthPoint\Wallpapers"
					& 'C:\NorthPoint\themeSwitcher7.exe' "C:\NorthPoint\northPoint7.theme"
					}
			$progress.Items.Add("Disabling stanby and monitor timeout when plugged in...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			powercfg -change -standby-timeout-ac 0
			powercfg -change -monitor-timeout-ac 0
			$progress.Items.Add("Setting random wallpaper.")
			$progress.Items.Add("The installer has finished! The installer will close in 20 seconds.")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			}
		if ($os -like '*6.2*')	{
			$progress.Items.Add("This computer is running Windows 8.")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			$progress.Items.Add("Setting taskbar icons...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			Invoke-RestMethod -Uri $taskbarpinURL -OutFile $taskbarpinPath
			Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" -Name "Favorites"
			& "C:\NorthPoint\taskbarPin.vbs" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
			& "C:\NorthPoint\taskbarPin.vbs" "C:\Program Files\Mozilla Firefox\firefox.exe"
			& "C:\NorthPoint\taskbarPin.vbs" "C:\Windows\explorer.exe"
			Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\Shell\Bags\1\Desktop" -Name FFLAGS -value 1075839525 -Force
			if ($wallpaper.Checked)	{
					$progress.Items.Add("Set wallpapers is checked."  )
					$progress.SelectedIndex = $progress.Items.Count - 1;
					$progress.SelectedIndex = -1;
					$progress.Items.Add("Setting wallpapers...")
					$progress.SelectedIndex = $progress.Items.Count - 1;
					$progress.SelectedIndex = -1;
					Invoke-RestMethod -Uri $wallpapersURL -OutFile $wallpapersPath
					Invoke-RestMethod -Uri $themeSwitcher10URL -OutFile $themeSwitcher10Path
					Invoke-RestMethod -Uri $windows10ThemeURL -OutFile $windows10ThemePath
					& 'C:\Program Files\7-Zip\7z.exe' e "C:\NorthPoint\wallpapers.zip" "-oC:\NorthPoint\Wallpapers"
					& 'C:\NorthPoint\themeSwitcher10.exe' "C:\NorthPoint\northPoint10.theme"
					}
			$progress.Items.Add("Disabling stanby and monitor timeout when plugged in...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			powercfg -change -standby-timeout-ac 0
			powercfg -change -monitor-timeout-ac 0
			$progress.Items.Add("The installer has finished! The installer will close in 20 seconds.")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			}
		if ($os -like '*6.3*')	{
			$progress.Items.Add("This computer is running Windows 8.1.")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			$progress.Items.Add("Setting taskbar icons...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			Invoke-RestMethod -Uri $taskbarpinURL -OutFile $taskbarpinPath
			Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" -Name "Favorites"
			& "C:\NorthPoint\taskbarPin.vbs" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
			& "C:\NorthPoint\taskbarPin.vbs" "C:\Program Files\Mozilla Firefox\firefox.exe"
			& "C:\NorthPoint\taskbarPin.vbs" "C:\Windows\explorer.exe"
			Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\Shell\Bags\1\Desktop" -Name FFLAGS -value 1075839525 -Force
			if ($wallpaper.Checked)	{
					$progress.Items.Add("Set wallpapers is checked."  )
					$progress.SelectedIndex = $progress.Items.Count - 1;
					$progress.SelectedIndex = -1;
					$progress.Items.Add("Setting wallpapers...")
					$progress.SelectedIndex = $progress.Items.Count - 1;
					$progress.SelectedIndex = -1;
					Invoke-RestMethod -Uri $wallpapersURL -OutFile $wallpapersPath
					Invoke-RestMethod -Uri $themeSwitcher10URL -OutFile $themeSwitcher10Path
					Invoke-RestMethod -Uri $windows10ThemeURL -OutFile $windows10ThemePath
					& 'C:\Program Files\7-Zip\7z.exe' e "C:\NorthPoint\wallpapers.zip" "-oC:\NorthPoint\Wallpapers"
					& 'C:\NorthPoint\themeSwitcher10.exe' "C:\NorthPoint\northPoint10.theme"
					}
			$progress.Items.Add("Disabling stanby and monitor timeout when plugged in...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			powercfg -change -standby-timeout-ac 0
			powercfg -change -monitor-timeout-ac 0
			$progress.Items.Add("The installer has finished! The installer will close in 20 seconds.")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			}
		if ($os -like '*10.0*')	{
			$progress.Items.Add("This computer is running Windows 10.")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			$progress.Items.Add("Setting explorer to open to This PC...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			Set-ItemProperty -path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -name LaunchTo -value 1
			$progress.Items.Add("Setting taskbar icons...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			Invoke-RestMethod -Uri $taskbarpinURL -OutFile $taskbarpinPath
			Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" -Name "Favorites"
			& "C:\NorthPoint\taskbarPin.vbs" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
			Start-Sleep -s 2
			& "C:\NorthPoint\taskbarPin.vbs" "C:\Program Files\Mozilla Firefox\firefox.exe"
			Start-Sleep -s 2
			& "C:\NorthPoint\taskbarPin.vbs" "C:\Windows\explorer.exe"
			$progress.Items.Add("Deleting Microsoft Edge from Desktop...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			Remove-Item "$Home\Desktop\Microsoft Edge.lnk" -Force
			Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\Shell\Bags\1\Desktop" -Name FFLAGS -value 1075839525 -Force
			if ($wallpaper.Checked)	{
					$progress.Items.Add("Set wallpapers is checked."  )
					$progress.SelectedIndex = $progress.Items.Count - 1;
					$progress.SelectedIndex = -1;
					$progress.Items.Add("Setting wallpapers...")
					$progress.SelectedIndex = $progress.Items.Count - 1;
					$progress.SelectedIndex = -1;
					Invoke-RestMethod -Uri $wallpapersURL -OutFile $wallpapersPath
					Invoke-RestMethod -Uri $themeSwitcher10URL -OutFile $themeSwitcher10Path
					Invoke-RestMethod -Uri $windows10ThemeURL -OutFile $windows10ThemePath
					& 'C:\Program Files\7-Zip\7z.exe' e "C:\NorthPoint\wallpapers.zip" "-oC:\NorthPoint\Wallpapers"
					& 'C:\NorthPoint\themeSwitcher10.exe' "C:\NorthPoint\northPoint10.theme"
					}
			$progress.Items.Add("Disabling fastboot mode...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			Set-ItemProperty -path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power" -name HiberbootEnabled -value 0
			$progress.Items.Add("Disabling Wi-Fi Sense...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			New-Item -Path HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting -Force
			Set-ItemProperty -Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" -Name "Value" -Type DWord -Value 0
			Set-ItemProperty -Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" -Name "Value" -Type DWord -Value 0
			$progress.Items.Add("Disabling People icon...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People"
			Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -Type DWord -Value 0
			$progress.Items.Add("Hiding recently used files and folders in Explorer...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowRecent" -Type DWord -Value 0
			Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowFrequent" -Type DWord -Value 0
			$progress.Items.Add("Disabling Action Center...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer"
			Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "DisableNotificationCenter" -Type DWord -Value 1
			Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" -Name "ToastEnabled" -Type DWord -Value 0
			$progress.Items.Add("Disabling stanby and monitor timeout when plugged in...")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			powercfg -change -standby-timeout-ac 0
			powercfg -change -monitor-timeout-ac 0
			$progress.Items.Add("The installer has finished! The installer will close in 20 seconds.")
			$progress.SelectedIndex = $progress.Items.Count - 1;
			$progress.SelectedIndex = -1;
			}
		Start-Sleep -s 20
		$northPoint.Close()
	}
	$OnLoadForm_StateCorrection=
	{
	    $northPoint.WindowState = $InitialFormWindowState
	}
	

## -- NorthPoint Installer

	$northPoint.Text = "NorthPoint Installer 3.0.6.4"
	$northPoint.Name = "form1"
	$northPoint.DataBindings.DefaultDataSourceUpdateMode = 0
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 550
	$System_Drawing_Size.Height = 240
	$northPoint.ClientSize = $System_Drawing_Size
	$northPoint.Icon = "$env:p2eincfilepath\NorthPoint.ico"
	
	
## -- Install button

	$install.TabIndex = 4
	$install.Name = "install"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 521
	$System_Drawing_Size.Height = 23
	$install.Size = $System_Drawing_Size
	$install.UseVisualStyleBackColor = $True
	$install.Text = "Install"
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 15
	$System_Drawing_Point.Y = 13
	$install.Location = $System_Drawing_Point
	$install.DataBindings.DefaultDataSourceUpdateMode = 0
	$install.add_Click($handler_install_Click)
	$northPoint.Controls.Add($install)
	
	
## -- Progress box

	$progress.FormattingEnabled = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 365
	$System_Drawing_Size.Height = 190
	$progress.Size = $System_Drawing_Size
	$progress.DataBindings.DefaultDataSourceUpdateMode = 0
	$progress.Name = "listBox1"
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 170
	$System_Drawing_Point.Y = 43
	$progress.Location = $System_Drawing_Point
	$progress.TabIndex = 3
	$northPoint.Controls.Add($progress)
	
	
## -- Computer Repair Centre OEM Information


	$crc.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$crc.Size = $System_Drawing_Size
	$crc.TabIndex = 0
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16+(45*0)
	$System_Drawing_Point.Y = 5+(31*1)
	$crc.Location = $System_Drawing_Point
	$crc.DataBindings.DefaultDataSourceUpdateMode = 0
	$crc.Name = "crc"
	$crc.Checked = 1
	$crc.Image = [System.Drawing.Image]::FromFile("C:\NorthPoint\computerRepairCentre.ico")
	$northPoint.Controls.Add($crc)
	
	
## -- Wallpaper


	$wallpaper.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$wallpaper.Size = $System_Drawing_Size
	$wallpaper.TabIndex = 4
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16+(45*0)
	$System_Drawing_Point.Y = 5+(31*2)
	$wallpaper.Location = $System_Drawing_Point
	$wallpaper.DataBindings.DefaultDataSourceUpdateMode = 0
	$wallpaper.Name = "vlc"
	$wallpaper.Checked = 1
	$wallpaper.Image = [System.Drawing.Image]::FromFile("C:\NorthPoint\wallpaper.ico")
	$northPoint.Controls.Add($wallpaper)
	
	
## -- Google Chrome

	$googleChrome.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$googleChrome.Size = $System_Drawing_Size
	$googleChrome.TabIndex = 2
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16+(45*0)
	$System_Drawing_Point.Y = 5+(31*3)
	$googleChrome.Location = $System_Drawing_Point
	$googleChrome.DataBindings.DefaultDataSourceUpdateMode = 0
	$googleChrome.Name = "googleChrome"
	$googleChrome.Checked = 1
	$googleChrome.Image = [System.Drawing.Image]::FromFile("C:\NorthPoint\googleChrome.ico")
	$northPoint.Controls.Add($googleChrome)
	
## -- iTunes


	$iTunes.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$iTunes.Size = $System_Drawing_Size
	$iTunes.TabIndex = 2
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16+(45*0)
	$System_Drawing_Point.Y = 5+(31*4)
	$iTunes.Location = $System_Drawing_Point
	$iTunes.DataBindings.DefaultDataSourceUpdateMode = 0
	$iTunes.Name = "iTunes"
	$iTunes.Checked = 0
	$iTunes.Image = [System.Drawing.Image]::FromFile("C:\NorthPoint\iTunes.ico")
	$northPoint.Controls.Add($iTunes)
	
	
## -- Kaspersky Internet Security

	$kaspersky.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$kaspersky.Size = $System_Drawing_Size
	$kaspersky.TabIndex = 3
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16+(45*0)
	$System_Drawing_Point.Y = 5+(31*5)
	$kaspersky.Location = $System_Drawing_Point
	$kaspersky.DataBindings.DefaultDataSourceUpdateMode = 0
	$kaspersky.Name = "kaspersky"
	$kaspersky.Checked = 1
	$kaspersky.Image = [System.Drawing.Image]::FromFile("C:\NorthPoint\kasperskyInternetSecurity.ico")
	$northPoint.Controls.Add($kaspersky)
	
	
## -- LibreOffice

	$libreOffice.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$libreOffice.Size = $System_Drawing_Size
	$libreOffice.TabIndex = 6
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16+(45*0)
	$System_Drawing_Point.Y = 5+(31*6)
	$libreOffice.Location = $System_Drawing_Point
	$libreOffice.DataBindings.DefaultDataSourceUpdateMode = 0
	$libreOffice.Name = "libreOffice"
	$libreOffice.Checked = $libreOfficeLocation
	$libreOffice.Image = [System.Drawing.Image]::FromFile("C:\NorthPoint\libreOffice.ico")
	$northPoint.Controls.Add($libreOffice)
	
	
## -- Mozilla Firefox

	$mozillaFirefox.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$mozillaFirefox.Size = $System_Drawing_Size
	$mozillaFirefox.TabIndex = 1
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16+(45*1)
	$System_Drawing_Point.Y = 5+(31*1)
	$mozillaFirefox.Location = $System_Drawing_Point
	$mozillaFirefox.DataBindings.DefaultDataSourceUpdateMode = 0
	$mozillaFirefox.Name = "mozillaFirefox"
	$mozillaFirefox.Checked = 1
	$mozillaFirefox.Image = [System.Drawing.Image]::FromFile("C:\NorthPoint\mozillaFirefox.ico")
	$northPoint.Controls.Add($mozillaFirefox)
	
	
## -- Mozilla Thunderbird

	$mozillaThunderbird.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$mozillaThunderbird.Size = $System_Drawing_Size
	$mozillaThunderbird.TabIndex = 1
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16+(45*1)
	$System_Drawing_Point.Y = 5+(31*2)
	$mozillaThunderbird.Location = $System_Drawing_Point
	$mozillaThunderbird.DataBindings.DefaultDataSourceUpdateMode = 0
	$mozillaThunderbird.Name = "mozillaThunderbird"
	$mozillaThunderbird.Checked = 0
	$mozillaThunderbird.Image = [System.Drawing.Image]::FromFile("C:\NorthPoint\mozillaThunderbird.ico")
	$northPoint.Controls.Add($mozillaThunderbird)
	
	
## -- Skype

	$skype.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$skype.Size = $System_Drawing_Size
	$skype.TabIndex = 7
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16+(45*1)
	$System_Drawing_Point.Y = 5+(31*3)
	$skype.Location = $System_Drawing_Point
	$skype.DataBindings.DefaultDataSourceUpdateMode = 0
	$skype.Name = "skype"
	$skype.Checked = 0
	$skype.Image = [System.Drawing.Image]::FromFile("C:\NorthPoint\skype.ico")
	$northPoint.Controls.Add($skype)
	
	
## -- TeamViewer

	$teamViewer.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$teamViewer.Size = $System_Drawing_Size
	$teamViewer.TabIndex = 7
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16+(45*1)
	$System_Drawing_Point.Y = 5+(31*4)
	$teamViewer.Location = $System_Drawing_Point
	$teamViewer.DataBindings.DefaultDataSourceUpdateMode = 0
	$teamViewer.Name = "teamViewer"
	$teamViewer.Checked = 1
	$teamViewer.Image = [System.Drawing.Image]::FromFile("C:\NorthPoint\teamViewer.ico")
	$northPoint.Controls.Add($teamViewer)
	

## -- uBlock Origin

	$uBlockOrigin.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$uBlockOrigin.Size = $System_Drawing_Size
	$uBlockOrigin.TabIndex = 7
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16+(45*1)
	$System_Drawing_Point.Y = 5+(31*5)
	$uBlockOrigin.Location = $System_Drawing_Point
	$uBlockOrigin.DataBindings.DefaultDataSourceUpdateMode = 0
	$uBlockOrigin.Name = "uBlockOrigin"
	$uBlockOrigin.Checked = 1
	$uBlockOrigin.Image = [System.Drawing.Image]::FromFile("C:\NorthPoint\uBlockOrigin.ico")
	$northPoint.Controls.Add($uBlockOrigin)
	
	
## -- VLC Media Player

	$vlc.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$vlc.Size = $System_Drawing_Size
	$vlc.TabIndex = 4
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16+(45*1)
	$System_Drawing_Point.Y = 5+(31*6)
	$vlc.Location = $System_Drawing_Point
	$vlc.DataBindings.DefaultDataSourceUpdateMode = 0
	$vlc.Name = "vlc"
	$vlc.Checked = 1
	$vlc.Image = [System.Drawing.Image]::FromFile("C:\NorthPoint\vlcMediaPlayer.ico")
	$northPoint.Controls.Add($vlc)
	
	
## -- Form

	$InitialFormWindowState = $northPoint.WindowState
	$northPoint.add_Load($OnLoadForm_StateCorrection)
	$northPoint.ShowDialog()
	$northPoint.Focus()
	}
northPointInstaller
