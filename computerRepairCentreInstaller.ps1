## -- Copyright (c) Charlie Howard 2016-2020 All rights reserved


## -- Download files

$computerRepairCentreIconURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/computerRepairCentreIcon.ico"
$computerRepairCentreIconPath = "C:\Computer Repair Centre\computerRepairCentreIcon.ico"
$seconds = Get-Date -Format ss
if(($seconds -ge 0) -and ($seconds -le 30))
{
	$wallpapersURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/wallpapers1.zip"
}
if(($seconds -ge 31) -and ($seconds -le 60))
{
	$wallpapersURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/wallpapers2.zip"
}
$wallpapersPath = "C:\Computer Repair Centre\wallpapers.zip"
Invoke-RestMethod -Uri $computerRepairCentreIconURL -OutFile $computerRepairCentreIconPath

function download {
	[reflection.assembly]::loadwithpartialname("System.Windows.Forms")
	[reflection.assembly]::loadwithpartialname("System.Drawing")
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$downloadBox = New-Object System.Windows.Forms.Form
	$downloadText = New-Object system.Windows.Forms.Label
	$progressBar = New-Object System.Windows.Forms.ProgressBar
	$syncHash = [hashtable]::Synchronized(@{})
	$syncHash.downloadBox = $downloadBox
	$syncHash.progressBar = $progressBar
	$b1 = $false
	$b2 = $false
	$b3 = $false
	$processRunspace = [runspacefactory]::CreateRunspace()
	$processRunspace.ApartmentState = "STA"
	$processRunspace.ThreadOptions = "ReuseThread"
	$processRunspace.Open()
	$processRunspace.SessionStateProxy.SetVariable("syncHash",$syncHash)
	$psCmd = [powershell]::Create().AddScript({
			$computerRepairCentreOEMURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/computerRepairCentreOEM.bmp"
			$computerRepairCentreOEMPath = "C:\Computer Repair Centre\computerRepairCentreOEM.bmp"
			$googleChromeURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/googleChrome.ico"
			$googleChromePath = "C:\Computer Repair Centre\googleChrome.ico"
			$kasperskyInternetSecurityURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/kasperskyInternetSecurity.ico"
			$kasperskyInternetSecurityPath = "C:\Computer Repair Centre\kasperskyInternetSecurity.ico"
			$libreOfficeURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/libreOffice.ico"
			$libreOfficePath = "C:\Computer Repair Centre\libreOffice.ico"
			$mozillaFirefoxURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/mozillaFirefox.ico"
			$mozillaFirefoxPath = "C:\Computer Repair Centre\mozillaFirefox.ico"
			$mozillaThunderbirdURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/mozillaThunderbird.ico"
			$mozillaThunderbirdPath = "C:\Computer Repair Centre\mozillaThunderbird.ico"
			$skypeURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/skype.ico"
			$skypePath = "C:\Computer Repair Centre\skype.ico"
			$teamViewerURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/teamViewer.ico"
			$teamViewerPath = "C:\Computer Repair Centre\teamViewer.ico"
			$uBlockOriginURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/uBlockOrigin.ico"
			$uBlockOriginPath = "C:\Computer Repair Centre\uBlockOrigin.ico"
			$vlcMediaPlayerURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/vlcMediaPlayer.ico"
			$vlcMediaPlayerPath = "C:\Computer Repair Centre\vlcMediaPlayer.ico"
			$wallpaperURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/wallpaper.ico"
			$wallpaperPath = "C:\Computer Repair Centre\wallpaper.ico"
			$pinURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/pin.ico"
			$pinPath = "C:\Computer Repair Centre\pin.ico"
			$nightModeURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/nightMode.ico"
			$nightModePath = "C:\Computer Repair Centre\nightMode.ico"
			$themeSwitcher7URL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/themeSwitcher7.exe"
			$themeSwitcher7Path = "C:\Computer Repair Centre\themeSwitcher7.exe"
			$themeSwitcher10URL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/themeSwitcher10.exe"
			$themeSwitcher10Path = "C:\Computer Repair Centre\themeSwitcher10.exe"
			$windows7ThemeURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/computerRepairCentre7.theme"
			$windows7ThemePath = "C:\Computer Repair Centre\computerRepairCentre7.theme"
			$windows10ThemeLightURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/computerRepairCentre10Light.theme"
			$windows10ThemeLightPath = "C:\Computer Repair Centre\computerRepairCentre10Light.theme"
			$windows10ThemeDarkURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/computerRepairCentre10Dark.theme"
			$windows10ThemeDarkPath = "C:\Computer Repair Centre\computerRepairCentre10Dark.theme"
			$iTunesURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/iTunes.ico"
			$iTunesPath = "C:\Computer Repair Centre\iTunes.ico"
			$chromeExtensionURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/chromeExtension.ps1"
			$chromeExtensionPath = "C:\Computer Repair Centre\chromeExtension.ps1"
			$firefoxExtensionURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/firefoxExtension.ps1"
			$firefoxExtensionPath = "C:\Computer Repair Centre\firefoxExtension.ps1"
			$mozillaLocalSettingsURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/local-settings.js"
			$mozillaLocalSettingsPath = "C:\Computer Repair Centre\local-settings.js"
			$mozillaConfigURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/mozilla.cfg"
			$mozillaConfigPath = "C:\Computer Repair Centre\mozilla.cfg"
			$sysPinURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/sysPin.exe"
			$sysPinPath = "C:\Computer Repair Centre\sysPin.exe"
			$setDefaultBrowserURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/SetDefaultBrowser.exe"
			$setDefaultBrowserPath = "C:\Computer Repair Centre\setDefaultBrowser.exe"
			Invoke-RestMethod -Uri $computerRepairCentreIconURL -OutFile $computerRepairCentreIconPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $googleChromeURL -OutFile $googleChromePath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $kasperskyInternetSecurityURL -OutFile $kasperskyInternetSecurityPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $libreOfficeURL -OutFile $libreOfficePath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $mozillaFirefoxURL -OutFile $mozillaFirefoxPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $mozillaThunderbirdURL -OutFile $mozillaThunderbirdPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $skypeURL -OutFile $skypePath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $teamViewerURL -OutFile $teamViewerPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $vlcMediaPlayerURL -OutFile $vlcMediaPlayerPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $iTunesURL -OutFile $iTunesPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $wallpaperURL -OutFile $wallpaperPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $pinURL -OutFile $pinPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $nightModeURL -OutFile $nightModePath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $uBlockOriginURL -OutFile $uBlockOriginPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $taskbarpin7URL -OutFile $taskbarpin7Path
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $taskbarpin10URL -OutFile $taskbarpin10Path
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $computerRepairCentreOEMURL -OutFile $computerRepairCentreOEMPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $chromeExtensionURL -OutFile $ChromeExtensionPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $firefoxExtensionURL -OutFile $firefoxExtensionPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $mozillaConfigURL -OutFile $mozillaConfigPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $mozillaLocalSettingsURL -OutFile $mozillaLocalSettingsPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $themeSwitcher7URL -OutFile $themeSwitcher7Path
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $windows7ThemeURL -OutFile $windows7ThemePath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $themeSwitcher10URL -OutFile $themeSwitcher10Path
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $windows10ThemeLightURL -OutFile $windows10ThemeLightPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $windows10ThemeDarkURL -OutFile $windows10ThemeDarkPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $sysPinURL -OutFile $sysPinPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $setDefaultBrowserURL -OutFile $setDefaultBrowserPath
			$syncHash.progressBar.PerformStep()
			$syncHash.downloadBox.Close()
		})
	$psCmd.Runspace = $processRunspace
	$data = $psCmd.BeginInvoke()


	## -- Download box

	$downloadBox.Text = "Downloading files please wait..."
	$downloadBox.Name = "form1"
	$downloadBox.DataBindings.DefaultDataSourceUpdateMode = 0
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 550
	$System_Drawing_Size.Height = 130
	$downloadBox.ClientSize = $System_Drawing_Size
	$downloadBox.Icon = "C:\Computer Repair Centre\computerRepairCentreIcon.ico"


	## -- Downloading text

	$downloadText.Text = "Downloading files please wait..."
	$downloadText.AutoSize = $true
	$downloadText.Width = 25
	$downloadText.Height = 10
	$downloadText.location = New-Object System.Drawing.Point (180,17)
	$downloadText.Font = 'Microsoft Sans Serif,10'
	$downloadBox.Controls.Add($downloadText)


	## -- Progress bar

	$progressBar.DataBindings.DefaultDataSourceUpdateMode = 0
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 20
	$System_Drawing_Point.Y = 50
	$progressBar.location = $System_Drawing_Point
	$progressBar.Name = "progressBar"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Height = 60
	$System_Drawing_Size.Width = 510
	$progressBar.Size = $System_Drawing_Size
	$progressBar.TabIndex = 3
	$progressBar.Minimum = 0
	$progressBar.Maximum = 28
	$progressBar.Step = 1
	$progressBar.Value = 0
	$progressBar.Style = "Continuous"
	$downloadBox.Controls.Add($progressBar)


	## -- Form

	$InitialFormWindowState = $downloadBox.WindowState
	$downloadBox.add_Load($OnLoadForm_StateCorrection)
	$downloadBox.ShowDialog()
	$downloadBox.Focus()
}
download


## -- Run installer

$operatingSystem = (Get-WmiObject -Class Win32_OperatingSystem).version
$internetProtocol = Invoke-RestMethod http://ipinfo.io/json | Select-Object -exp ip
$user = $env:UserName
if ($internetProtocol -like '*82.24.227.141*') {
	$location = 0
}
else {
	$location = 1
}
function computerRepairCentreInstaller {
	[reflection.assembly]::loadwithpartialname("System.Windows.Forms")
	[reflection.assembly]::loadwithpartialname("System.Drawing")
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$crcInstaller = New-Object System.Windows.Forms.Form
	$install = New-Object System.Windows.Forms.Button
	$reboot = New-Object System.Windows.Forms.Button
	$close = New-Object System.Windows.Forms.Button
	$progress = New-Object System.Windows.Forms.ListBox
	$progressBar = New-Object System.Windows.Forms.ProgressBar
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
	$pin = New-Object System.Windows.Forms.CheckBox
	$nightMode = New-Object System.Windows.Forms.CheckBox
	$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
	$syncHash = [hashtable]::Synchronized(@{})
	$syncHash.crcInstaller = $crcInstaller
	$syncHash.progressBar = $progressBar
	$syncHash.progress = $progress
	$syncHash.crc = $crc
	$syncHash.mozillaFirefox = $mozillaFirefox
	$syncHash.mozillaThunderbird = $mozillaThunderbird
	$syncHash.googleChrome = $googleChrome
	$syncHash.kaspersky = $kaspersky
	$syncHash.vlc = $vlc
	$syncHash.libreOffice = $libreOffice
	$syncHash.skype = $skype
	$syncHash.teamViewer = $teamViewer
	$syncHash.iTunes = $iTunes
	$syncHash.uBlockOrigin = $uBlockOrigin
	$syncHash.wallpaper = $wallpaper
	$syncHash.pin = $pin
	$syncHash.nightMode = $nightMode
	$syncHash.operatingSystem = $operatingSystem
	$syncHash.internetProtocol = $internetProtocol
	$syncHash.libreOfficeLocation = $libreOfficeLocation
	$syncHash.user = $user
	$syncHash.progressBarValue = $progressBarValue
	$syncHash.wallpapersURL = $wallpapersURL
	$syncHash.wallpapersPath = $wallpapersPath
	$b1 = $false
	$b2 = $false
	$b3 = $false


	## -- Install button click

	$handler_install_Click =
	{
		$processRunspace = [runspacefactory]::CreateRunspace()
		$processRunspace.ApartmentState = "STA"
		$processRunspace.ThreadOptions = "ReuseThread"
		$processRunspace.Open()
		$processRunspace.SessionStateProxy.SetVariable("syncHash",$syncHash)
		$psCmd = [powershell]::Create().AddScript({
				$syncHash.progress.Items.Add("Current version: 3.5.3.1 (29/05/2020)")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$syncHash.progressBar.Maximum = 7
				if ($syncHash.crc.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.mozillaFirefox.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.mozillaThunderbird.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.googleChrome.Checked) { $syncHash.progressBar.Maximum += 1 }
				if (($syncHash.mozillaFirefox.Checked) -or ($syncHash.googleChrome.Checked)) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.kaspersky.Checked) { $syncHash.progressBar.Maximum += 2 }
				if ($syncHash.vlc.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.libreOffice.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.skype.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.teamViewer.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.iTunes.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.wallpaper.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.pin.Checked) { $syncHash.progressBar.Maximum += 4 }
				if ($syncHash.nightMode.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.uBlockOrigin.Checked) {
					if ($syncHash.googleChrome.Checked) { $syncHash.progressBar.Maximum += 1 }
					if ($syncHash.mozillaFirefox.Checked) { $syncHash.progressBar.Maximum += 1 }
				}
				if ($syncHash.operatingSystem -like '*6.1*') { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.operatingSystem -like '*6.2*') { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.operatingSystem -like '*6.3*') { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.operatingSystem -like '*10.0*') {
					$syncHash.progressBar.Maximum += 13
				}
				$syncHash.progressBar.Refresh()
				if ($syncHash.crc.Checked) {
					$syncHash.progress.Items.Add("Computer Repair Centre OEM information is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Installing Computer Repair Centre OEM information...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					if ($syncHash.internetProtocol -like '*212.159.116.68*') {
						$syncHash.progress.Items.Add("Installer being run from Romsey.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						New-Item -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name Logo -Value "C:\Computer Repair Centre\computerRepairCentreOEM.bmp" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name Manufacturer -Value "Computer Repair Centre" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportHours -Value "Mon-Sat 9:15am-5pm - Wed 9:15am-4pm" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportPhone -Value "01794 517142" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportURL -Value "https://www.firstforitrepairs.co.uk" -Force
					}
					elseif ($syncHash.internetProtocol -like '*82.24.227.141*') {
						$syncHash.progress.Items.Add("Installer being run from Chandlers Ford.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						New-Item -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name Logo -Value "C:\Computer Repair Centre\computerRepairCentreOEM.bmp" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name Manufacturer -Value "Computer Repair Centre" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportHours -Value "Mon-Fri 9am-5pm - Sat 9am-4pm" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportPhone -Value "08712 244129" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportURL -Value "https://www.brmcomputers.co.uk" -Force
					}
					$syncHash.progress.Items.Add("Completed installation of Computer Repair Centre OEM information.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				$syncHash.progress.Items.Add("Installing all prerequisites...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$syncHash.progress.Items.Add("Installing Chocolatey...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
				$syncHash.progressBar.PerformStep()
				$syncHash.progress.Items.Add("Installing Microsoft .NET 3.5...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				choco install dotnet3.5 -y
				$syncHash.progressBar.PerformStep()
				$syncHash.progress.Items.Add("Installing Microsoft .NET 4.5...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				choco install dotnet4.5 -y
				$syncHash.progressBar.PerformStep()
				$syncHash.progress.Items.Add("Installing Microsoft .NET 4.6.1...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				choco install dotnet4.6.1 -y
				$syncHash.progressBar.PerformStep()
				$syncHash.progress.Items.Add("Installing Microsoft .NET 4.6.2...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				choco install dotnet4.6.2 -y
				$syncHash.progressBar.PerformStep()
				$syncHash.progress.Items.Add("Updating PowerShell...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				choco install powershell -y
				$syncHash.progressBar.PerformStep()
				$syncHash.progress.Items.Add("Installing 7-zip...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				choco install 7zip.install -y --ignore-checksums
				$syncHash.progressBar.PerformStep()
				$syncHash.progress.Items.Add("Completed installation of all prerequisites...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$syncHash.progressBar.PerformStep()
				if ($syncHash.googleChrome.Checked) {
					$syncHash.progress.Items.Add("Google Chrome is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Installing Google Chrome...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					choco install googlechrome -y --ignore-checksums
					$programList = choco list --localonly
					if ($programList -like '*GoogleChrome*') {
						$syncHash.progress.Items.Add("Completed installation of Google Chrome.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("The installation of Google Chrome has failed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
				}
				if ($syncHash.iTunes.Checked) {
					$syncHash.progress.Items.Add("iTunes is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Installing iTunes...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					choco install itunes -y --ignore-checksums
					$programList = choco list --localonly
					if ($programList -like '*iTunes*') {
						$syncHash.progress.Items.Add("Completed installation of iTunes.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("The installation of iTunes has failed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
				}
				if ($syncHash.kaspersky.Checked) {
					$syncHash.progress.Items.Add("Kaspersky Internet Security 2020 is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Installing Kaspersky Internet Security 2020...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					choco install kis -y --ignore-checksums --force
					$programList = choco list --localonly
					$syncHash.progress.Items.Add("Removing Safe Money icon from Desktop...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					Remove-Item "C:\Users\Public\Desktop\Safe Money.lnk"
					if ($programList -like '*kis*') {
						$syncHash.progress.Items.Add("Completed installation of Kaspersky Internet Security 2020.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
						$syncHash.progress.Items.Add("Uninstalling Kaspersky Secure Connection...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$kasperskySecureConnection = Get-ChildItem "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall" | ForEach-Object { Get-ItemProperty $_.PSPath } | Where-Object { $_ -match "Kaspersky Secure Connection" } | Select-Object UninstallString
						$kasperskySecureConnection = $kasperskySecureConnection.UninstallString -replace "msiexec.exe","" -replace "/I","" -replace "/X",""
						$kasperskySecureConnection = $kasperskySecureConnection.Trim()
						$kasperskySecureConnection = $kasperskySecureConnection | Select-Object -Skip 1
						cmd /c "C:\Windows\SysWOW64\msiexec.exe /i$kasperskySecureConnection REMOVE=ALL /passive"
						$syncHash.progress.Items.Add("Completed uninstallation of Kaspersky Secure Connection.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("The installation of Kaspersky Internet Security 2020 has failed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
						$syncHash.progressBar.PerformStep()
					}
				}
				if ($syncHash.libreOffice.Checked) {
					$syncHash.progress.Items.Add("LibreOffice is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Installing LibreOffice...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					choco install libreoffice-fresh -y --ignore-checksums
					$programList = choco list --localonly
					if ($programList -like '*libreoffice-fresh*') {
						$syncHash.progress.Items.Add("Completed installation of LibreOffice.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("The installation of LibreOffice has failed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
				}
				if ($syncHash.mozillaFirefox.Checked) {
					$syncHash.progress.Items.Add("Mozilla Firefox is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Installing Mozilla Firefox...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					choco install firefox -y --ignore-checksums
					$programList = choco list --localonly
					if ($programList -like '*Firefox*') {
						$syncHash.progress.Items.Add("Completed installation of Mozilla Firefox.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("The installation of Mozilla Firefox has failed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
				}
				if ($syncHash.mozillaThunderbird.Checked) {
					$syncHash.progress.Items.Add("Mozilla Thunderbird is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Installing Mozilla Thunderbird...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					choco install thunderbird -y --ignore-checksums
					$programList = choco list --localonly
					if ($programList -like '*thunderbird*') {
						$syncHash.progress.Items.Add("Completed installation of Mozilla Thunderbird.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("The installation of Mozilla Thunderbird has failed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
				}
				if ($syncHash.skype.Checked) {
					$syncHash.progress.Items.Add("Skype is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Installing Skype...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					choco install skype -y --ignore-checksums
					$programList = choco list --localonly
					if ($programList -like '*skype*') {
						$syncHash.progress.Items.Add("Completed installation of Skype.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("The installation of Skype has failed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
				}
				if ($syncHash.teamViewer.Checked) {
					$syncHash.progress.Items.Add("TeamViewer is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Installing TeamViewer...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					choco install teamviewer -y --ignore-checksums
					$programList = choco list --localonly
					if ($programList -like '*teamviewer*') {
						$syncHash.progress.Items.Add("Completed installation of TeamViewer.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("The installation of TeamViewer has failed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
				}
				if ($syncHash.uBlockOrigin.Checked) {
					$syncHash.progress.Items.Add("uBlockOrigin is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					if ($syncHash.googleChrome.Checked) {
						$syncHash.progress.Items.Add("Installing uBlockOrigin on Google Chrome...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Import-Module "C:\Computer Repair Centre\chromeExtension.ps1"
						New-ChromeExtension -ExtensionID 'cjpalhdlnbpafiamejdnhcphjbkeiagm' -Mode Machine
						$syncHash.progress.Items.Add("The installation of uBlockOrigin on Google Chrome has completed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					if ($syncHash.mozillaFirefox.Checked) {
						$syncHash.progress.Items.Add("Installing uBlockOrigin on Mozilla Firefox...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						New-Item -ItemType directory -Path "C:\Program Files\Mozilla Firefox\defaults\pref" -Force
						Copy-Item "C:\Computer Repair Centre\mozilla.cfg" -Destination "C:\Program Files\Mozilla Firefox" -Force
						Copy-Item "C:\Computer Repair Centre\local-settings.js" -Destination "C:\Program Files\Mozilla Firefox\defaults\pref" -Force
						Import-Module "C:\Computer Repair Centre\firefoxExtension.ps1"
						$firefoxParams = @{
							'ExtensionUri' = 'https://addons.mozilla.org/firefox/downloads/file/985780/ublock_origin-1.16.10-an+fx.xpi?src=dp-btn-primary'
							'ExtensionPath' = 'C:\FirefoxExtensions'
							'Hive' = 'HKLM'
						}
						New-FirefoxExtension @firefoxParams
						$syncHash.progress.Items.Add("The installation of uBlockOrigin on Mozilla Firefox has completed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
				}
				if ($syncHash.vlc.Checked) {
					$syncHash.progress.Items.Add("VLC Media Player is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Installing VLC Media Player...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					choco install vlc -y --ignore-checksums
					$programList = choco list --localonly
					if ($programList -like '*vlc*') {
						$syncHash.progress.Items.Add("Completed installation of VLC Media Player.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("The installation of VLC Media Player has failed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
				}
				if ($syncHash.operatingSystem -like '*6.1*') {
					$syncHash.progress.Items.Add("This computer is running Windows 7. You really need to move on Grandad.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					}
					if ($syncHash.wallpaper.Checked) {
						$syncHash.progress.Items.Add("Set wallpapers is selected.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progress.Items.Add("Setting wallpapers...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Invoke-RestMethod -Uri $syncHash.wallpapersURL -OutFile $syncHash.wallpapersPath
						Remove-Item "C:\Computer Repair Centre\Wallpapers" -Recurse -Force
						& 'C:\Program Files\7-Zip\7z.exe' e "C:\Computer Repair Centre\wallpapers.zip" "-oC:\Computer Repair Centre\Wallpapers"
						& 'C:\Computer Repair Centre\themeSwitcher7.exe' "C:\Computer Repair Centre\computerRepairCentre7.theme"
						$syncHash.progressBar.PerformStep()
					$syncHash.progress.Items.Add("The installation has finished! You can safely close the program.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				if ($syncHash.operatingSystem -like '*6.2*') {
					$syncHash.progress.Items.Add("This computer is running Windows 8. This OS is no longer supported by this software.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("The installation has finished! You can safely close the program.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				if ($syncHash.operatingSystem -like '*6.3*') {
					$syncHash.progress.Items.Add("This computer is running Windows 8.1. This OS is no longer supported by this software.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("The installation has finished! You can safely close the program.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				if ($syncHash.operatingSystem -like '*10.0*') {
					$syncHash.progress.Items.Add("This computer is running Windows 10.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Setting explorer to open to This PC...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Value 1
					$syncHash.progressBar.PerformStep()
					$syncHash.progress.Items.Add("Disabling fastboot mode...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power" -Name HiberbootEnabled -Value 0
					$syncHash.progressBar.PerformStep()
					$syncHash.progress.Items.Add("Disabling Wi-Fi Sense...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					New-Item -Path HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting -Force
					Set-ItemProperty -Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" -Name "Value" -Type DWord -Value 0
					Set-ItemProperty -Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" -Name "Value" -Type DWord -Value 0
					$syncHash.progressBar.PerformStep()
					$syncHash.progress.Items.Add("Disabling telemetry...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
					Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
					Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
					$syncHash.progressBar.PerformStep()
					$syncHash.progress.Items.Add("Disabling Bing Search in start menu...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "BingSearchEnabled" -Type DWord -Value 0
					if (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search")) {
						New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Force | Out-Null
					}
					Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "DisableWebSearch" -Type DWord -Value 1
					$syncHash.progressBar.PerformStep()
					$syncHash.progress.Items.Add("Disabling start menu suggestions...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Type DWord -Value 0
					Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SilentInstalledAppsEnabled" -Type DWord -Value 0
					$syncHash.progressBar.PerformStep()
					$syncHash.progress.Items.Add("Disabling location tracking...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 0
					Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 0
					$syncHash.progressBar.PerformStep()
					$syncHash.progress.Items.Add("Disabling advertising ID...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					if (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo")) {
						New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" | Out-Null
					}
					Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" -Name "Enabled" -Type DWord -Value 0
					$syncHash.progressBar.PerformStep()
					$syncHash.progress.Items.Add("Disabling People icon...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					New-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People"
					Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -Type DWord -Value 0
					$syncHash.progressBar.PerformStep()
					$syncHash.progress.Items.Add("Hiding recently used files and folders in File Explorer...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowRecent" -Type DWord -Value 0
					Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowFrequent" -Type DWord -Value 0
					$syncHash.progressBar.PerformStep()
					$syncHash.progress.Items.Add("Disabling Action Centre...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer"
					Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "DisableNotificationCenter" -Type DWord -Value 1
					Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" -Name "ToastEnabled" -Type DWord -Value 0
					$syncHash.progressBar.PerformStep()
					$syncHash.progress.Items.Add("Removing Microsoft Edge icon from the Desktop...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					Remove-Item "$Home\Desktop\Microsoft Edge.lnk" -Force
					$syncHash.progressBar.PerformStep()
					if ($syncHash.pin.Checked) {
						$syncHash.progress.Items.Add("Setting taskbar icons...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Remove-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" -Recurse -Force
						Sleep(3)
						& "C:\Computer Repair Centre\sysPin.exe" "C:\Program Files\Mozilla Firefox\firefox.exe" "Pin to taskbar"
						& "C:\Computer Repair Centre\sysPin.exe" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "Pin to taskbar"
						& "C:\Computer Repair Centre\sysPin.exe" "C:\Windows\explorer.exe" "Pin to taskbar"
						$syncHash.progressBar.PerformStep()
						$syncHash.progress.Items.Add("Disabling Cortana search bar...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Type DWord -Value 0
						$syncHash.progressBar.PerformStep()
						$syncHash.progress.Items.Add("Disabling task view icon...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowTaskViewButton" -Type DWord -Value 0
						$syncHash.progressBar.PerformStep()
						$syncHash.progress.Items.Add("Disabling Cortana icon...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowCortanaButton" -Type DWord -Value 0
						$syncHash.progressBar.PerformStep()
					}
					$programList = choco list --localonly
					if (($programList -like '*Firefox*') -or ($programList -notlike '*Chrome*')) {
						if ($programList -like '*Firefox*') {
							$syncHash.progress.Items.Add("Setting Mozilla Firefox as the default browser...")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							& 'C:\Computer Repair Centre\setDefaultBrowser.exe' HKLM Firefox-308046B0AF4A39CB
							$syncHash.progressBar.PerformStep()
						}
						elseIf ($programList -like '*Chrome*') {
							$syncHash.progress.Items.Add("Setting Google Chrome as the default browser...")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							& 'C:\Computer Repair Centre\setDefaultBrowser.exe' Chrome
							$syncHash.progressBar.PerformStep()
						}
					}
					if (($syncHash.wallpaper.Checked) -and ($syncHash.nightMode.Checked)) {
						$syncHash.progress.Items.Add("Set wallpapers and dark mode has been selected.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progress.Items.Add("Enabling wallpapers and dark mode...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Invoke-RestMethod -Uri $syncHash.wallpapersURL -OutFile $syncHash.wallpapersPath
						Remove-Item "C:\Computer Repair Centre\Wallpapers" -Recurse -Force
						& 'C:\Program Files\7-Zip\7z.exe' e "C:\Computer Repair Centre\wallpapers.zip" "-oC:\Computer Repair Centre\Wallpapers"
						& 'C:\Computer Repair Centre\themeSwitcher10.exe' "C:\Computer Repair Centre\computerRepairCentre10Dark.theme"
						$syncHash.progressBar.PerformStep()
						$syncHash.progressBar.PerformStep()
						$syncHash.progress.Items.Add("Completed installation of wallpapers and dark mode.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
					}
					if (($syncHash.wallpaper.Checked) -and ($syncHash.nightMode.Checked -eq 0)) {
						$syncHash.progress.Items.Add("Set wallpapers is selected.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progress.Items.Add("Setting wallpapers...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$se
						Invoke-RestMethod -Uri $syncHash.wallpapersURL -OutFile $syncHash.wallpapersPath
						Remove-Item "C:\Computer Repair Centre\Wallpapers" -Recurse -Force
						& 'C:\Program Files\7-Zip\7z.exe' e "C:\Computer Repair Centre\wallpapers.zip" "-oC:\Computer Repair Centre\Wallpapers"
						& 'C:\Computer Repair Centre\themeSwitcher10.exe' "C:\Computer Repair Centre\computerRepairCentre10Light.theme"
						$syncHash.progressBar.PerformStep()
						$syncHash.progress.Items.Add("Completed installation of wallpapers.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
					}
					if (($syncHash.nightMode.Checked) -and ($syncHash.wallpaper.Checked -eq 0)) {
						$syncHash.progress.Items.Add("Set dark mode is selected.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progress.Items.Add("Enabling dark mode...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0
						$syncHash.progress.Items.Add("Dark mode has been enabled.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 1
					}
					$syncHash.progress.Items.Add("The installation has finished! You can safely close the program.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
			})
		$psCmd.Runspace = $processRunspace
		$data = $psCmd.BeginInvoke()
	}
	$handler_reboot_Click =
	{
		Restart-Computer -Force
	}
	$handler_close_Click =
	{
		$syncHash.crcInstaller.Close()
	}
	$OnLoadForm_StateCorrection =
	{
		$crcInstaller.WindowState = $InitialFormWindowState
	}


	## -- Computer Repair Centre Installer

	$crcInstaller.Text = "Computer Repair Centre Installer 3.5.3.1"
	$crcInstaller.Name = "crcInstaller"
	$crcInstaller.DataBindings.DefaultDataSourceUpdateMode = 0
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 550
	$System_Drawing_Size.Height = 240
	$crcInstaller.ClientSize = $System_Drawing_Size
	$crcInstaller.Icon = "C:\Computer Repair Centre\computerRepairCentreIcon.ico"


	## -- Install button

	$install.TabIndex = 4
	$install.Name = "install"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 160
	$System_Drawing_Size.Height = 23
	$install.Size = $System_Drawing_Size
	$install.UseVisualStyleBackColor = $True
	$install.Text = "Install"
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 15
	$System_Drawing_Point.Y = 13
	$install.location = $System_Drawing_Point
	$install.DataBindings.DefaultDataSourceUpdateMode = 0
	$install.add_Click($handler_install_Click)
	$crcInstaller.Controls.Add($install)


	## -- Reboot button

	$reboot.TabIndex = 4
	$reboot.Name = "reboot"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 160
	$System_Drawing_Size.Height = 23
	$reboot.Size = $System_Drawing_Size
	$reboot.UseVisualStyleBackColor = $True
	$reboot.Text = "Reboot"
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 195
	$System_Drawing_Point.Y = 13
	$reboot.location = $System_Drawing_Point
	$reboot.DataBindings.DefaultDataSourceUpdateMode = 0
	$reboot.add_Click($handler_reboot_Click)
	$crcInstaller.Controls.Add($reboot)


  ## -- Close button

	$close.TabIndex = 4
	$close.Name = "close"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 160
	$System_Drawing_Size.Height = 23
	$close.Size = $System_Drawing_Size
	$close.UseVisualStyleBackColor = $True
	$close.Text = "Close"
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 375
	$System_Drawing_Point.Y = 13
	$close.location = $System_Drawing_Point
	$close.DataBindings.DefaultDataSourceUpdateMode = 0
	$close.add_Click($handler_close_Click)
	$crcInstaller.Controls.Add($close)


	## -- Progress bar

	$progressBar.DataBindings.DefaultDataSourceUpdateMode = 0
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 170
	$System_Drawing_Point.Y = 43
	$progressBar.location = $System_Drawing_Point
	$progressBar.Name = "progressBar"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Height = 15
	$System_Drawing_Size.Width = 365
	$progressBar.Size = $System_Drawing_Size
	$progressBar.TabIndex = 3
	$progressBar.Minimum = 0
	$progressBar.Step = 1
	$progressBar.Value = 0
	$progressBar.Style = "Continuous"
	$crcInstaller.Controls.Add($progressBar)


	## -- Progress box

	$progress.FormattingEnabled = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 365
	$System_Drawing_Size.Height = 170
	$progress.Size = $System_Drawing_Size
	$progress.DataBindings.DefaultDataSourceUpdateMode = 0
	$progress.Name = "listBox1"
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 170
	$System_Drawing_Point.Y = 63
	$progress.location = $System_Drawing_Point
	$progress.TabIndex = 3
	$crcInstaller.Controls.Add($progress)


	## -- Computer Repair Centre OEM Information

	$crc.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$crc.Size = $System_Drawing_Size
	$crc.TabIndex = 0
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 0)
	$System_Drawing_Point.Y = 5 + (31 * 1)
	$crc.location = $System_Drawing_Point
	$crc.DataBindings.DefaultDataSourceUpdateMode = 0
	$crc.Name = "crc"
	$crc.Checked = 1
	$crc.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\computerRepairCentreIcon.ico")
	$crcInstaller.Controls.Add($crc)


	## -- Pin

	$pin.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$pin.Size = $System_Drawing_Size
	$pin.TabIndex = 4
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 0)
	$System_Drawing_Point.Y = 5 + (31 * 2)
	$pin.location = $System_Drawing_Point
	$pin.DataBindings.DefaultDataSourceUpdateMode = 0
	$pin.Name = "pin"
	$pin.Checked = 1
	$pin.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\pin.ico")
	$crcInstaller.Controls.Add($pin)


	## -- Wallpaper

	$wallpaper.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$wallpaper.Size = $System_Drawing_Size
	$wallpaper.TabIndex = 4
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 0)
	$System_Drawing_Point.Y = 5 + (31 * 3)
	$wallpaper.location = $System_Drawing_Point
	$wallpaper.DataBindings.DefaultDataSourceUpdateMode = 0
	$wallpaper.Name = "wallpaper"
	$wallpaper.Checked = 1
	$wallpaper.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\wallpaper.ico")
	$crcInstaller.Controls.Add($wallpaper)


	## -- Night Mode

	$nightMode.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$nightMode.Size = $System_Drawing_Size
	$nightMode.TabIndex = 4
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 0)
	$System_Drawing_Point.Y = 5 + (31 * 4)
	$nightMode.location = $System_Drawing_Point
	$nightMode.DataBindings.DefaultDataSourceUpdateMode = 0
	$nightMode.Name = "nightMode"
	$nightMode.Checked = 0
	$nightMode.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\nightMode.ico")
	$crcInstaller.Controls.Add($nightMode)


	## -- Google Chrome

	$googleChrome.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$googleChrome.Size = $System_Drawing_Size
	$googleChrome.TabIndex = 2
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 0)
	$System_Drawing_Point.Y = 5 + (31 * 5)
	$googleChrome.location = $System_Drawing_Point
	$googleChrome.DataBindings.DefaultDataSourceUpdateMode = 0
	$googleChrome.Name = "googleChrome"
	$googleChrome.Checked = 1
	$googleChrome.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\googleChrome.ico")
	$crcInstaller.Controls.Add($googleChrome)

	## -- iTunes

	$iTunes.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$iTunes.Size = $System_Drawing_Size
	$iTunes.TabIndex = 2
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 0)
	$System_Drawing_Point.Y = 5 + (31 * 6)
	$iTunes.location = $System_Drawing_Point
	$iTunes.DataBindings.DefaultDataSourceUpdateMode = 0
	$iTunes.Name = "iTunes"
	$iTunes.Checked = 0
	$iTunes.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\iTunes.ico")
	$crcInstaller.Controls.Add($iTunes)


	## -- Kaspersky Internet Security

	$kaspersky.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$kaspersky.Size = $System_Drawing_Size
	$kaspersky.TabIndex = 3
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 1)
	$System_Drawing_Point.Y = 5 + (31 * 1)
	$kaspersky.location = $System_Drawing_Point
	$kaspersky.DataBindings.DefaultDataSourceUpdateMode = 0
	$kaspersky.Name = "kaspersky"
	$kaspersky.Checked = 1
	$kaspersky.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\kasperskyInternetSecurity.ico")
	$crcInstaller.Controls.Add($kaspersky)


	## -- LibreOffice

	$libreOffice.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$libreOffice.Size = $System_Drawing_Size
	$libreOffice.TabIndex = 6
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 1)
	$System_Drawing_Point.Y = 5 + (31 * 2)
	$libreOffice.location = $System_Drawing_Point
	$libreOffice.DataBindings.DefaultDataSourceUpdateMode = 0
	$libreOffice.Name = "libreOffice"
	$libreOffice.Checked = $location
	$libreOffice.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\libreOffice.ico")
	$crcInstaller.Controls.Add($libreOffice)


	## -- Mozilla Firefox

	$mozillaFirefox.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$mozillaFirefox.Size = $System_Drawing_Size
	$mozillaFirefox.TabIndex = 1
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 1)
	$System_Drawing_Point.Y = 5 + (31 * 3)
	$mozillaFirefox.location = $System_Drawing_Point
	$mozillaFirefox.DataBindings.DefaultDataSourceUpdateMode = 0
	$mozillaFirefox.Name = "mozillaFirefox"
	$mozillaFirefox.Checked = 1
	$mozillaFirefox.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\mozillaFirefox.ico")
	$crcInstaller.Controls.Add($mozillaFirefox)


	## -- Mozilla Thunderbird

	$mozillaThunderbird.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$mozillaThunderbird.Size = $System_Drawing_Size
	$mozillaThunderbird.TabIndex = 1
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 1)
	$System_Drawing_Point.Y = 5 + (31 * 4)
	$mozillaThunderbird.location = $System_Drawing_Point
	$mozillaThunderbird.DataBindings.DefaultDataSourceUpdateMode = 0
	$mozillaThunderbird.Name = "mozillaThunderbird"
	$mozillaThunderbird.Checked = 0
	$mozillaThunderbird.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\mozillaThunderbird.ico")
	$crcInstaller.Controls.Add($mozillaThunderbird)


	## -- Skype

	$skype.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$skype.Size = $System_Drawing_Size
	$skype.TabIndex = 7
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 1)
	$System_Drawing_Point.Y = 5 + (31 * 5)
	$skype.location = $System_Drawing_Point
	$skype.DataBindings.DefaultDataSourceUpdateMode = 0
	$skype.Name = "skype"
	$skype.Checked = 0
	$skype.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\skype.ico")
	$crcInstaller.Controls.Add($skype)


	## -- TeamViewer

	$teamViewer.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$teamViewer.Size = $System_Drawing_Size
	$teamViewer.TabIndex = 7
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 1)
	$System_Drawing_Point.Y = 5 + (31 * 6)
	$teamViewer.location = $System_Drawing_Point
	$teamViewer.DataBindings.DefaultDataSourceUpdateMode = 0
	$teamViewer.Name = "teamViewer"
	$teamViewer.Checked = 1
	$teamViewer.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\teamViewer.ico")
	$crcInstaller.Controls.Add($teamViewer)


	## -- uBlock Origin

	$uBlockOrigin.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$uBlockOrigin.Size = $System_Drawing_Size
	$uBlockOrigin.TabIndex = 7
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 2)
	$System_Drawing_Point.Y = 5 + (31 * 1)
	$uBlockOrigin.location = $System_Drawing_Point
	$uBlockOrigin.DataBindings.DefaultDataSourceUpdateMode = 0
	$uBlockOrigin.Name = "uBlockOrigin"
	$uBlockOrigin.Checked = 1
	$uBlockOrigin.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\uBlockOrigin.ico")
	$crcInstaller.Controls.Add($uBlockOrigin)


	## -- VLC Media Player

	$vlc.UseVisualStyleBackColor = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$vlc.Size = $System_Drawing_Size
	$vlc.TabIndex = 6
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 2)
	$System_Drawing_Point.Y = 5 + (31 * 2)
	$vlc.location = $System_Drawing_Point
	$vlc.DataBindings.DefaultDataSourceUpdateMode = 0
	$vlc.Name = "vlc"
	$vlc.Checked = 1
	$vlc.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\vlcMediaPlayer.ico")
	$crcInstaller.Controls.Add($vlc)


	## -- Form

	$InitialFormWindowState = $crcInstaller.WindowState
	$crcInstaller.add_Load($OnLoadForm_StateCorrection)
	$crcInstaller.ShowDialog()
	$crcInstaller.Focus()
}
computerRepairCentreInstaller
