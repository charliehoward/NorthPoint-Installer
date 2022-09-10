## -- Copyright (c) Charlie Howard 2016-2022 All rights reserved


## -- Download files

$computerRepairCentreIconURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/computerRepairCentreIcon.ico"
$computerRepairCentreIconPath = "C:\Computer Repair Centre\computerRepairCentreIcon.ico"
$seconds = Get-Date -Format ss
Invoke-RestMethod -Uri $computerRepairCentreIconURL -OutFile $computerRepairCentreIconPath
function download {
	[reflection.assembly]::loadwithpartialname("System.Windows.Forms")
	[reflection.assembly]::loadwithpartialname("System.Drawing")
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
			$teamsURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/teams.ico"
			$teamsPath = "C:\Computer Repair Centre\teams.ico"
			$malwareBytesURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/malwareBytes.ico"
			$malwareBytesPath = "C:\Computer Repair Centre\malwareBytes.ico"
			$microsoftOfficeURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/microsoftOffice.ico"
			$microsoftOfficePath = "C:\Computer Repair Centre\microsoftOffice.ico"
			$microsoftOffice2007URL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/microsoftOffice2007.ico"
			$microsoftOffice2007Path = "C:\Computer Repair Centre\microsoftOffice2007.ico"
			$microsoftOfficeXMLURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/ProPlusVLK2019.xml"
			$microsoftOfficeXMLPath = "C:\Computer Repair Centre\ProPlusVLK2019.xml"
			$microsoftOfficeSetupURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/setup.exe"
			$microsoftOfficeSetupPath = "C:\Computer Repair Centre\setup.exe"
			$microsoftOfficeActivatorURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/officeActivator.zip"
			$microsoftOfficeActivatorPath = "C:\Computer Repair Centre\officeActivator.zip"
			$uBlockOriginURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/uBlockOrigin.ico"
			$uBlockOriginPath = "C:\Computer Repair Centre\uBlockOrigin.ico"
			$vlcMediaPlayerURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/vlcMediaPlayer.ico"
			$vlcMediaPlayerPath = "C:\Computer Repair Centre\vlcMediaPlayer.ico"
			$bingURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/bing.ico"
			$bingPath = "C:\Computer Repair Centre\bing.ico"
			$nightModeURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/nightMode.ico"
			$nightModePath = "C:\Computer Repair Centre\nightMode.ico"
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
			$setDefaultBrowserURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/SetDefaultBrowser.exe"
			$setDefaultBrowserPath = "C:\Computer Repair Centre\setDefaultBrowser.exe"
			$bingWallpaperURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/bingWallpaper.zip"
			$bingWallpaperPath = "C:\Computer Repair Centre\bingWallpaper.zip"
			$deleteFilesURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/deleteFiles.zip"
			$deleteFilesPath = "C:\Computer Repair Centre\deleteFiles.zip"
			$zoomURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/zoom.ico"
			$zoomPath = "C:\Computer Repair Centre\zoom.ico"
			$sleepURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/sleep.ico"
			$sleepPath = "C:\Computer Repair Centre\sleep.ico"
			$restartURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/restart.ico"
			$restartPath = "C:\Computer Repair Centre\restart.ico"
			$chandlersFordURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/chandlersFord.ico"
			$chandlersFordPath = "C:\Computer Repair Centre\chandlersFord.ico"
			$romseyURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/romsey.ico"
			$romseyPath = "C:\Computer Repair Centre\romsey.ico"
			$highcliffeURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/highcliffe.ico"
			$highcliffePath = "C:\Computer Repair Centre\highcliffe.ico"
			$solitareIconURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/solitare.ico"
			$solitareIconPath = "C:\Computer Repair Centre\solitare.ico"
			$HPURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/HP.ico"
			$HPPath = "C:\Computer Repair Centre\HP.ico"
			Invoke-RestMethod -Uri $computerRepairCentreIconURL -OutFile $computerRepairCentreIconPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $googleChromeURL -OutFile $googleChromePath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $kasperskyInternetSecurityURL -OutFile $kasperskyInternetSecurityPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $libreOfficeURL -OutFile $libreOfficePath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $malwareBytesURL -OutFile $malwareBytesPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $mozillaFirefoxURL -OutFile $mozillaFirefoxPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $mozillaThunderbirdURL -OutFile $mozillaThunderbirdPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $skypeURL -OutFile $skypePath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $teamViewerURL -OutFile $teamViewerPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $teamsURL -OutFile $teamsPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $vlcMediaPlayerURL -OutFile $vlcMediaPlayerPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $iTunesURL -OutFile $iTunesPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $bingURL -OutFile $bingPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $nightModeURL -OutFile $nightModePath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $uBlockOriginURL -OutFile $uBlockOriginPath
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
			Invoke-RestMethod -Uri $setDefaultBrowserURL -OutFile $setDefaultBrowserPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $microsoftOfficeURL -OutFile $microsoftOfficePath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $microsoftOffice2007URL -OutFile $microsoftOffice2007Path
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $microsoftOfficeSetupURL -OutFile $microsoftOfficeSetupPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $microsoftOfficeXMLURL -OutFile $microsoftOfficeXMLPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $microsoftOfficeActivatorURL -OutFile $microsoftOfficeActivatorPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $bingWallpaperURL -OutFile $bingWallpaperPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $zoomURL -OutFile $zoomPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $deleteFilesURL -OutFile $deleteFilesPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $sleepURL -OutFile $sleepPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $restartURL -OutFile $restartPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $chandlersFordURL -OutFile $chandlersFordPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $romseyURL -OutFile $romseyPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $highcliffeURL -OutFile $highcliffePath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $solitareIconURL -OutFile $solitareIconPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $HPURL -OutFile $HPPath
			$syncHash.progressBar.PerformStep()
			$syncHash.downloadBox.Close()
		})
	$psCmd.Runspace = $processRunspace
	$data = $psCmd.BeginInvoke()


	## -- Download box

	$downloadBox.Text = "Downloading files, please wait..."
	$downloadBox.Name = "downloader"
	$downloadBox.DataBindings.DefaultDataSourceUpdateMode = 0
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 550
	$System_Drawing_Size.Height = 130
	$downloadBox.ClientSize = $System_Drawing_Size
	$downloadBox.Icon = "C:\Computer Repair Centre\computerRepairCentreIcon.ico"
	$downloadBox.BackColor = "#2c2c2c"
	$downloadBox.ForeColor = "White"


	## -- Downloading text

	$downloadText.Text = "Downloading files, please wait..."
	$downloadText.AutoSize = $true
	$downloadText.Width = 25
	$downloadText.Height = 10
	$downloadText.location = New-Object System.Drawing.Point (180,17)
	$downloadText.Font = 'Microsoft Sans Serif,10'
	$downloadBox.Controls.Add($downloadText)
	$downloadText.BackColor = "#2c2c2c"
	$downloadText.ForeColor = "White"


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
	$progressBar.Maximum = 35
	$progressBar.Step = 1
	$progressBar.Value = 0
	$downloadBox.Controls.Add($progressBar)
	$progressBar.Style  = "Continuous"
	$progressBar.ForeColor = "#00b9ff"
	

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
$internetProtocolCF = [System.Net.Dns]::GetHostAddresses("intranet.brmcomputers.co.uk")
$internetProtocolR = [System.Net.Dns]::GetHostAddresses("intranet.firstforitrepairs.co.uk")
$internetProtocolHC =[System.Net.Dns]::GetHostAddresses("intranet.fastitfix.co.uk")
$user = $env:UserName
if ($internetProtocolCF -like $internetProtocol) {
	$chandlersFordIP = 1
	$romseyIP = 0
	$highcliffeIP = 0
	$location = 0
	$locationOpposite = 1
}
if ($internetProtocolR -like $internetProtocol) {
	$chandlersFordIP = 0
	$romseyIP = 1
	$highcliffeIP = 0
	$location = 1
	$locationOpposite = 0
}
if ($internetProtocolHC -like $internetProtocol) {
	$chandlersFordIP = 0
	$romseyIP = 0
	$highcliffeIP = 1
	$location = 1
	$locationOpposite = 0
}
$HPEliteBook = 0
$computerSystem = (Get-WmiObject -Class:Win32_ComputerSystem)
if ($computerSystem.Model -like '*EliteBook*'){
	$HPEliteBook = 1
}
$date = Get-Date -Format "dd/MM"
if ($date -like '*06/04*') {
	$birthday = 1
	$birthdayName = "Charlie"
}
if ($date -like '*21/04*') {
	$birthday = 1
	$birthdayName = "Dean"
}
if ($date -like '*16/05*') {
	$birthday = 1
	$birthdayName = "Howard"
}
if ($date -like '*09/06*') {
	$birthday = 1
	$birthdayName = "Adam"
}
if ($date -like '*24/06*') {
	$birthday = 1
	$birthdayName = "Steve"
}
if ($date -like '*18/09*') {
	$birthday = 1
	$birthdayName = "Callum"
}
function computerRepairCentreInstaller {
	[reflection.assembly]::loadwithpartialname("System.Windows.Forms")
	[reflection.assembly]::loadwithpartialname("System.Drawing")
	$crcInstaller = New-Object System.Windows.Forms.Form
	$install = New-Object System.Windows.Forms.Button
	$reboot = New-Object System.Windows.Forms.Button
	$close = New-Object System.Windows.Forms.Button
	$chocoReset = New-Object System.Windows.Forms.Button
	$progress = New-Object System.Windows.Forms.ListBox
	$progressBar = New-Object System.Windows.Forms.ProgressBar
	$crc = New-Object System.Windows.Forms.CheckBox
	$malwareBytes = New-Object System.Windows.Forms.CheckBox
	$mozillaFirefox = New-Object System.Windows.Forms.CheckBox
	$mozillaThunderbird = New-Object System.Windows.Forms.CheckBox
	$googleChrome = New-Object System.Windows.Forms.CheckBox
	$kaspersky = New-Object System.Windows.Forms.CheckBox
	$vlc = New-Object System.Windows.Forms.CheckBox
	$libreOffice = New-Object System.Windows.Forms.CheckBox
	$microsoftOffice = New-Object System.Windows.Forms.CheckBox
	$microsoftOffice2007 = New-Object System.Windows.Forms.CheckBox
	$skype = New-Object System.Windows.Forms.CheckBox
	$teamViewer = New-Object System.Windows.Forms.CheckBox
	$teams = New-Object System.Windows.Forms.CheckBox
	$iTunes = New-Object System.Windows.Forms.CheckBox
	$uBlockOrigin = New-Object System.Windows.Forms.CheckBox
	$wallpaper = New-Object System.Windows.Forms.CheckBox
	$nightMode = New-Object System.Windows.Forms.CheckBox
	$rebootBox = New-Object System.Windows.Forms.CheckBox
	$sleep = New-Object System.Windows.Forms.CheckBox
	$zoom = New-Object System.Windows.Forms.CheckBox
	$romsey = New-Object System.Windows.Forms.CheckBox
	$chandlersFord = New-Object System.Windows.Forms.CheckBox
	$highcliffe = New-Object System.Windows.Forms.CheckBox
	$solitare = New-Object System.Windows.Forms.CheckBox
	$HP = New-Object System.Windows.Forms.CheckBox
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
	$syncHash.malwareBytes = $malwareBytes
	$syncHash.microsoftOffice = $microsoftOffice
	$syncHash.microsoftOffice2007 = $microsoftOffice2007
	$syncHash.skype = $skype
	$syncHash.teamViewer = $teamViewer
	$syncHash.teams = $teams
	$syncHash.iTunes = $iTunes
	$syncHash.uBlockOrigin = $uBlockOrigin
	$syncHash.wallpaper = $wallpaper
	$syncHash.nightMode = $nightMode
	$syncHash.operatingSystem = $operatingSystem
	$syncHash.internetProtocol = $internetProtocol
	$syncHash.libreOfficeLocation = $libreOfficeLocation
	$syncHash.user = $user
	$syncHash.progressBarValue = $progressBarValue
	$syncHash.wallpapersURL = $wallpapersURL
	$syncHash.wallpapersPath = $wallpapersPath
	$syncHash.rebootBox = $rebootBox
	$syncHash.reboot = $reboot
	$syncHash.chocoReset = $chocoReset
	$syncHash.sleep = $sleep
	$syncHash.zoom = $zoom
	$syncHash.HPEliteBook = $HPEliteBook
	$syncHash.romsey = $romsey
	$syncHash.chandlersFord = $chandlersFord
	$syncHash.highcliffe = $highcliffe
	$syncHash.birthday = $birthday
	$syncHash.birthdayName = $birthdayName
	$syncHash.solitare = $solitare
	$syncHash.HP = $HP
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
				$syncHash.progress.Items.Add("Current version: 4.2022.09.10.1")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$syncHash.progress.Items.Add("Last updated: 10th of September 2022")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				if ($birthday -like '*1*') { 
					$syncHash.progress.Items.Add("Today is $birthdayName's birthday!")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Happy Birthday to You")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Happy Birthday to You")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Happy Birthday Dear $birthdayName!")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Happy Birthday to You")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
				}
				$syncHash.progressBar.Maximum = 12
				if ($syncHash.sleep.Checked) { $syncHash.progressBar.Maximum += 1 }
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
				if ($syncHash.nightMode.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.solitare.Checked) { $syncHash.progressBar.Maximum += 2 }
				if ($syncHash.HP.Checked) { $syncHash.progressBar.Maximum += 3 }
				if ($syncHash.microsoftOffice.Checked) { $syncHash.progressBar.Maximum += 2 }
				if ($syncHash.microsoftOffice2007.Checked) { $syncHash.progressBar.Maximum += 2 }
				if ($syncHash.uBlockOrigin.Checked) {
					if ($syncHash.googleChrome.Checked) { $syncHash.progressBar.Maximum += 1 }
					if ($syncHash.mozillaFirefox.Checked) { $syncHash.progressBar.Maximum += 1 }
				}
				if ($syncHash.operatingSystem -like '*6.1*') { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.operatingSystem -like '*6.2*') { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.operatingSystem -like '*6.3*') { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.operatingSystem -like '*10.0.1*') { $syncHash.progressBar.Maximum += 5 }
				if ($syncHash.operatingSystem -like '*10.0.2*') { $syncHash.progressBar.Maximum += 5 }
				if ($syncHash.sleep -like '*1*' ) {
					$syncHash.progress.Items.Add("This computer is a refurb, disable sleep on AC power and will reboot.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
				}
				$syncHash.progressBar.Refresh()
				if ($syncHash.crc.Checked) {
					$syncHash.progress.Items.Add("Computer Repair Centre OEM information is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Installing Computer Repair Centre OEM information...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					if ($syncHash.romsey.Checked) {
						$syncHash.progress.Items.Add("Installer being run from Romsey.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						New-Item -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name Logo -Value "C:\Computer Repair Centre\computerRepairCentreOEM.bmp" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name Manufacturer -Value "Computer Repair Centre" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportHours -Value "Mon-Fri 9:15am-5pm - Sat 9:15am-4pm" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportPhone -Value "01794 517142" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportURL -Value "https://www.firstforitrepairs.co.uk" -Force
					}
					elseif ($syncHash.chandlersFord.Checked) {
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
					elseif ($syncHash.highcliffe.Checked) {
						$syncHash.progress.Items.Add("Installer being run from Highcliffe.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						New-Item -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name Logo -Value "C:\Computer Repair Centre\computerRepairCentreOEM.bmp" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name Manufacturer -Value "Computer Repair Centre" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportHours -Value "TBD" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportPhone -Value "TBD" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportURL -Value "TBD" -Force
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
				Set-ExecutionPolicy AllSigned
				Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
				$syncHash.progressBar.PerformStep()
				$syncHash.progress.Items.Add("Installing Microsoft .NET 3.5...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$programList = choco list --localonly
				if ($programList -like '*DotNet3.5*') { 
					$syncHash.progress.Items.Add("Microsoft .NET 3.5 is already installed.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				else {
					choco install dotnet3.5 -y
					$syncHash.progressBar.PerformStep()
				}
				$syncHash.progress.Items.Add("Installing Microsoft .NET 4.5...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$programList = choco list --localonly
				if ($programList -like '*DotNet4.5*') { 
					$syncHash.progress.Items.Add("Microsoft .NET 4.5 is already installed.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				else {
					choco install dotnet4.5 -y
					$syncHash.progressBar.PerformStep()
				}
				$syncHash.progress.Items.Add("Installing Microsoft .NET 4.6.1...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$programList = choco list --localonly
				if ($programList -like '*DotNet4.6.1*') { 
					$syncHash.progress.Items.Add("Microsoft .NET 4.6.1 is already installed.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				else {
					choco install dotnet4.6.1 -y
					$syncHash.progressBar.PerformStep()
				}
				$syncHash.progress.Items.Add("Installing Microsoft .NET 4.6.2...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$programList = choco list --localonly
				if ($programList -like '*DotNet4.6.2*') { 
					$syncHash.progress.Items.Add("Microsoft .NET 4.6.2 is already installed.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				else {
					choco install dotnet4.6.2 -y
					$syncHash.progressBar.PerformStep()
				}
				$syncHash.progress.Items.Add("Installing Microsoft Visual C++ Redistributable...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$programList = choco list --localonly
				if ($programList -like '*vcredist140*') { 
					$syncHash.progress.Items.Add("Microsoft Visual C++ Redistributable is already installed.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				else {
					choco install vcredist140 -y
					choco install vcredist2015 -y
					$syncHash.progressBar.PerformStep()
				}
				$syncHash.progressBar.PerformStep()
				$syncHash.progress.Items.Add("Installing HashTab...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$programList = choco list --localonly
				if ($programList -like '*hashtab*') { 
					$syncHash.progress.Items.Add("HashTab is already installed.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				else {
					choco install hashtab -y
					$syncHash.progressBar.PerformStep()
				}
				$syncHash.progress.Items.Add("Updating PowerShell...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				choco install powershell -y
				$syncHash.progressBar.PerformStep()
				$syncHash.progress.Items.Add("Installing 7-zip...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$programList = choco list --localonly
				if ($programList -like '*7zip*') { 
						$syncHash.progress.Items.Add("7-zip is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
				else {
					choco install 7zip.install -y
					$syncHash.progressBar.PerformStep()
					$programList = choco list --localonly
					if ($programList -like '*7zip*') {
						$syncHash.progress.Items.Add("Completed installation of 7-zip.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("The installation of 7-zip has failed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progress.Items.Add("Retrying the installation of 7-zip.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
						choco install 7zip.install -y --ignore-checksums
					}
				}
				$syncHash.progress.Items.Add("Unzipping all Bing Wallpaper files.")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$syncHash.progressBar.PerformStep()
				& 'C:\Program Files\7-Zip\7z.exe' x "C:\Computer Repair Centre\bingWallpaper.zip" "-oC:\Computer Repair Centre" -aoa
				$syncHash.progress.Items.Add("Unzipping all cleanup files.")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$syncHash.progressBar.PerformStep()
				& 'C:\Program Files\7-Zip\7z.exe' x "C:\Computer Repair Centre\deleteFiles.zip" "-oC:\Computer Repair Centre" -aoa
				$syncHash.progress.Items.Add("Completed installation of all prerequisites...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$syncHash.progressBar.PerformStep()
				if ($syncHash.googleChrome.Checked) {
					$syncHash.progress.Items.Add("Google Chrome is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = choco list --localonly
					if ($programList -like '*GoogleChrome*') { 
						$syncHash.progress.Items.Add("Google Chrome is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing Google Chrome...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						choco install googlechrome -y
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
							$syncHash.progress.Items.Add("Retrying the installation of Google Chrome.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
							choco install googlechrome -y --ignore-checksums
						}
					}
				}
				if ($syncHash.iTunes.Checked) {
					$syncHash.progress.Items.Add("iTunes is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = choco list --localonly
					if ($programList -like '*iTunes*') { 
						$syncHash.progress.Items.Add("iTunes is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing iTunes...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						choco install itunes -y
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
							$syncHash.progress.Items.Add("Retrying the installation of iTunes.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
							choco install itunes -y --ignore-checksums
						}
					}
				}
				if ($syncHash.kaspersky.Checked) {
					$syncHash.progress.Items.Add("Kaspersky Internet Security is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = choco list --localonly
					if ($programList -like '*kis*') { 
						$syncHash.progress.Items.Add("Kaspersky Internet Security is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing Kaspersky Internet Security...")
				 		$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						choco install kis -y
						$programList = choco list --localonly
						$syncHash.progress.Items.Add("Removing Safe Money icon from Desktop...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Remove-Item "C:\Users\Public\Desktop\Safe Money.lnk"
						if ($programList -like '*kis*') {
							$syncHash.progress.Items.Add("Completed installation of Kaspersky Internet Security.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
						}
						else {
							$syncHash.progress.Items.Add("The installation of Kaspersky Internet Security has failed.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progress.Items.Add("Retrying the installation of Kaspersky Internet Security.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
							choco install kis -y --ignore-checksums
						}
						$syncHash.progress.Items.Add("Uninstalling Kaspersky Secure Connection & Kaspersky VPN...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$kasperskySecureConnection = Get-ChildItem "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall" | ForEach-Object { Get-ItemProperty $_.PSPath } | Where-Object { $_ -match "Kaspersky Secure Connection" } | Select-Object UninstallString
						$kasperskySecureConnection = $kasperskySecureConnection.UninstallString -replace "msiexec.exe","" -replace "/I","" -replace "/X",""
						$kasperskySecureConnection = $kasperskySecureConnection.Trim()
						$kasperskySecureConnection = $kasperskySecureConnection | Select-Object -Skip 1
						$kasperskyVPN = Get-ChildItem "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall" | ForEach-Object { Get-ItemProperty $_.PSPath } | Where-Object { $_ -match "Kaspersky VPN" } | Select-Object UninstallString
						$kasperskyVPN = $kasperskyVPN.UninstallString -replace "msiexec.exe","" -replace "/I","" -replace "/X",""
						$kasperskyVPN = $kasperskyVPN.Trim()
						$kasperskyVPN = $kasperskyVPN | Select-Object -Skip 1
						cmd /c "C:\Windows\SysWOW64\msiexec.exe /i$kasperskySecureConnection REMOVE=ALL /passive"
						cmd /c "C:\Windows\SysWOW64\msiexec.exe /i$kasperskyVPN REMOVE=ALL /passive"
						$syncHash.progress.Items.Add("Completed uninstallation of Kaspersky Secure Connection & Kaspersky VPN.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
				}
				if ($syncHash.libreOffice.Checked) {
					$syncHash.progress.Items.Add("LibreOffice is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = choco list --localonly
					if ($programList -like '*libreoffice-fresh*') { 
						$syncHash.progress.Items.Add("LibreOffice is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing LibreOffice...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						choco install libreoffice-fresh -y
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
							$syncHash.progress.Items.Add("Retrying the installation of LibreOffice.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
							choco install libreoffice-fresh -y --ignore-checksums
						}
					}
				}
				if ($syncHash.microsoftOffice2007.Checked) {
					$syncHash.progress.Items.Add("Microsoft Office 2007 is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Downloading Microsoft Office 2007...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					Invoke-RestMethod -Uri "https://files.crchq.net/installer/Office2007.zip" -OutFile "C:\Computer Repair Centre\Office2007.zip"
					& 'C:\Program Files\7-Zip\7z.exe' x "C:\Computer Repair Centre\Office2007.zip" "-oC:\Computer Repair Centre\Office2007" -aoa
					$syncHash.progressBar.PerformStep()
					$syncHash.progress.Items.Add("Installing Microsoft Office 2007...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$DesktopPath = [Environment]::GetFolderPath("Desktop")
					& 'C:\Computer Repair Centre\Office2007\setup.exe' /config 'C:\Computer Repair Centre\Office2007\Enterprise.WW\config.xml'
					Start-Sleep 30
					Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office\Microsoft Office Word 2007.lnk" "$DesktopPath\Word.lnk"
					Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office\Microsoft Office Excel 2007.lnk" "$DesktopPath\Excel.lnk"
					Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office\Microsoft Office PowerPoint 2007.lnk" "$DesktopPath\PowerPoint.lnk"
					Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office\Microsoft Office Outlook 2007.lnk" "$DesktopPath\Outlook.lnk"
					$syncHash.progress.Items.Add("Completed installation of Microsoft Office 2007.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				if ($syncHash.microsoftOffice.Checked) {
					$syncHash.progress.Items.Add("Microsoft Office 2019 is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Installing Microsoft Office 2019...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$DesktopPath = [Environment]::GetFolderPath("Desktop")
					& 'C:\Computer Repair Centre\setup.exe' /configure 'C:\Computer Repair Centre\ProPlusVLK2019.xml'
					$syncHash.progress.Items.Add("Completed installation of Microsoft Office 2019.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
					$syncHash.progress.Items.Add("Activating Microsoft Office 2019...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					Start-Sleep 15
					& "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE"
					Start-Sleep 20
					taskkill /F /IM WINWORD.EXE
					taskkill /F /IM OfficeC2RClient.exe
					Start-Sleep 20
					& 'C:\Program Files\7-Zip\7z.exe' x "C:\Computer Repair Centre\officeActivator.zip" "-oC:\Computer Repair Centre\" -aoa
					& "C:\Computer Repair Centre\officeActivator.bat"
					Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Word.lnk" "$DesktopPath\Word.lnk"
					Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Excel.lnk" "$DesktopPath\Excel.lnk"
					Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\PowerPoint.lnk" "$DesktopPath\PowerPoint.lnk"
					Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Outlook.lnk" "$DesktopPath\Outlook.lnk"
					$syncHash.progress.Items.Add("Completed activation of Microsoft Office 2019.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				if ($syncHash.malwareBytes.Checked) {
					$syncHash.progress.Items.Add("MalwareBytes is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = choco list --localonly
					if ($programList -like '*malwarebytes*') { 
						$syncHash.progress.Items.Add("MalwareBytes is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing MalwareBytes...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						choco install malwarebytes -y
						$programList = choco list --localonly
						if ($programList -like '*malwarebytes*') {
							$syncHash.progress.Items.Add("Completed installation of MalwareBytes.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
						}
						else {
							$syncHash.progress.Items.Add("The installation of MalwareBytes has failed.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progress.Items.Add("Retrying the installation of MalwareBytes.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
							choco install malwarebytes -y --ignore-checksums
						}
					}
				}	
				if ($syncHash.mozillaFirefox.Checked) {
					$syncHash.progress.Items.Add("Mozilla Firefox is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = choco list --localonly
					if ($programList -like '*Firefox*') { 
						$syncHash.progress.Items.Add("Mozilla Firefox is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing Mozilla Firefox...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						choco install firefox -y
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
							$syncHash.progress.Items.Add("Retrying the installation of Mozilla Firefox.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
							choco install firefox -y --ignore-checksums
						}
					}
				}
				if ($syncHash.mozillaThunderbird.Checked) {
					$syncHash.progress.Items.Add("Mozilla Thunderbird is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = choco list --localonly
					if ($programList -like '*thunderbird*') { 
						$syncHash.progress.Items.Add("Mozilla Thunderbird is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing Mozilla Thunderbird...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						choco install thunderbird -y
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
							$syncHash.progress.Items.Add("Retrying the installation of Mozilla Thunderbird.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
							choco install thunderbird -y --ignore-checksums
						}
					}
				}
				if ($syncHash.skype.Checked) {
					$syncHash.progress.Items.Add("Skype is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = choco list --localonly
					if ($programList -like '*skype*') { 
						$syncHash.progress.Items.Add("Skype is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing Skype...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						choco install skype -y
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
							$syncHash.progress.Items.Add("Retrying the installation of Skype.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
							choco install skype -y --ignore-checksums
						}
					}
				}
				if ($syncHash.teamViewer.Checked) {
					$syncHash.progress.Items.Add("TeamViewer is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = choco list --localonly
					if ($programList -like '*teamviewer*') { 
						$syncHash.progress.Items.Add("TeamViewer is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing TeamViewer...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						choco install teamviewer -y
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
							$syncHash.progress.Items.Add("Retrying the installation of TeamViewer.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
							choco install teamviewer -y --ignore-checksums
						}
					}
				}
				if ($syncHash.teams.Checked) {
					$syncHash.progress.Items.Add("Microsoft Teams is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = choco list --localonly
					if ($programList -like '*microsoft-teams*') { 
						$syncHash.progress.Items.Add("Microsoft Teams is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing Microsoft Teams...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						choco install microsoft-teams.install -y
						$programList = choco list --localonly
						if ($programList -like '*microsoft-teams*') {
							$syncHash.progress.Items.Add("Completed installation of Microsoft Teams.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
						}
						else {
							$syncHash.progress.Items.Add("The installation of Microsoft Teams has failed.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progress.Items.Add("Retrying the installation of Microsoft Teams.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
							choco install microsoft-teams.install -y --ignore-checksums
						}
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
					$programList = choco list --localonly
					if ($programList -like '*vlc*') { 
						$syncHash.progress.Items.Add("VLC Media Player is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing VLC Media Player...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						choco install vlc -y
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
							$syncHash.progress.Items.Add("Retrying the installation of VLC Media Player.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
							choco install vlc -y --ignore-checksums
						}
					}
				}
				if ($syncHash.solitare.Checked) {
					$syncHash.progress.Items.Add("Windows 7 Games are selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Downloading Windows 7 Games...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					Invoke-RestMethod -Uri "https://files.crchq.net/installer/Windows7Games.zip" -OutFile "C:\Computer Repair Centre\Windows7Games.zip"
					& 'C:\Program Files\7-Zip\7z.exe' x "C:\Computer Repair Centre\Windows7Games.zip" "-oC:\Computer Repair Centre" -aoa
					$syncHash.progressBar.PerformStep()
					$syncHash.progress.Items.Add("Installing Windows 7 Games...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					& 'C:\Computer Repair Centre\Windows7Games.exe' /S
					$syncHash.progress.Items.Add("Completed installation of Windows 7 Games.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				if ($syncHash.zoom.Checked) {
					$syncHash.progress.Items.Add("Zoom is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = choco list --localonly
					if ($programList -like '*zoom*') { 
						$syncHash.progress.Items.Add("Zoom is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing Zoom...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						choco install zoom -y
						$programList = choco list --localonly
						if ($programList -like '*zoom*') {
							$syncHash.progress.Items.Add("Completed installation of Zoom.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
						}
						else {
							$syncHash.progress.Items.Add("The installation of Zoom has failed.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progress.Items.Add("Retrying the installation of Zoom.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
							choco install zoom -y --ignore-checksums
						}
					}
					if ($syncHash.HP.Checked) {
						$syncHash.progress.Items.Add("HP Hotkey Support is selected.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progress.Items.Add("Downloading HP Hotkey Support...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Invoke-RestMethod -Uri "https://files.crchq.net/installer/HPHotkey.zip" -OutFile "C:\Computer Repair Centre\HPHotkey.zip"
						& 'C:\Program Files\7-Zip\7z.exe' x "C:\Computer Repair Centre\HPHotkey.zip" "-oC:\Computer Repair Centre" -aoa
						$syncHash.progressBar.PerformStep()
						$syncHash.progress.Items.Add("Installing HP Hotkey Support...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Invoke-Item 'C:\Computer Repair Centre\SP103615\src\install.cmd'
						$syncHash.progressBar.PerformStep()
						$syncHash.progress.Items.Add("Installing HP Framework...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						& 'C:\Computer Repair Centre\hpswf.msi' /quiet
						$syncHash.progress.Items.Add("Completed installation of HP Hotkey Support.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
				}
				if ($syncHash.operatingSystem -like '*6.1*') {
					$syncHash.progress.Items.Add("This computer is running Windows 7. You really need to move on Grandad.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("The installation has finished! You can safely close the program.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				if ($syncHash.operatingSystem -like '*6.2*') {
					$syncHash.progress.Items.Add("This computer is running OS 8. This OS is no longer supported by this software.")
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
				if ($syncHash.operatingSystem -like '*10.0.1*') {
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
					$syncHash.progress.Items.Add("Disabling location tracking...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 0
					Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 0
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
					if ($syncHash.wallpaper.Checked) {
						$syncHash.progress.Items.Add("Bing Wallpapers has been selected.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progress.Items.Add("Enabling Bing wallpapers and setting up daily schedule...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$myPicturesFolder = [Environment]::GetFolderPath("MyPictures")
      					$myPicturesFolderBing = ($myPicturesFolder) + "\Bing Wallpapers"
        				New-Item -Path $myPicturesFolderBing -ItemType Directory
						& "C:\Computer Repair Centre\bingWallpaperInitial.ps1"
						$syncHash.progressBar.PerformStep()
						$syncHash.progress.Items.Add("Completed installation of Bing Wallpapers.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
					}
					if ($syncHash.nightMode.Checked) {
						$syncHash.progress.Items.Add("Dark mode is selected.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progress.Items.Add("Enabling darkmode...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0
						$syncHash.progressBar.PerformStep()
						$syncHash.progress.Items.Add("Completed installation of darkmode.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
					}
					if ($syncHash.refurbBox.Checked) {
						$syncHash.progress.Items.Add("Disabling sleep mode on AC power.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Powercfg /Change standby-timeout-ac 0
						Powercfg /Change monitor-timeout-ac 0
						$syncHash.progress.Items.Add("Sleep mode has been disabled on AC power.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					& 'C:\Computer Repair Centre\deleteFilesTask.ps1'
					$syncHash.progress.Items.Add("The installation has finished! You can safely close the program.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					if ($syncHash.kaspersky.Checked) {
						$syncHash.progress.Items.Add("The system requires a reboot to complete the installation of Kaspersky.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
					}
					if ($syncHash.microsoftOffice.Checked) {
						$syncHash.progress.Items.Add("The system requires a restart to complete the activation of Microsoft Office 2019.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progress.Items.Add("The system will restart in 1 minute, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						shutdown /r /f /t 60
						Start-Sleep 10
						$syncHash.progress.Items.Add("The system will restart in 50 seconds, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
						$syncHash.progress.Items.Add("The system will restart in 40 seconds, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
						$syncHash.progress.Items.Add("The system will restart in 30 seconds, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
						$syncHash.progress.Items.Add("The system will restart in 20 seconds, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
						$syncHash.progress.Items.Add("The system will restart in 10 seconds, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 5
						$syncHash.progress.Items.Add("The system will restart in 5 seconds, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 5
					}
					$syncHash.progressBar.PerformStep()
				}
				if ($syncHash.operatingSystem -like '*10.0.2*') {
					$syncHash.progress.Items.Add("This computer is running Windows 11.")
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
					$syncHash.progress.Items.Add("Disabling location tracking...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 0
					Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 0
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
					if ($syncHash.nightMode.Checked) {
						$syncHash.progress.Items.Add("Dark mode is selected.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progress.Items.Add("Enabling darkmode...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						start-process -filepath "C:\Windows\Resources\Themes\dark.theme"; timeout /t 3; taskkill /im "systemsettings.exe" /f
						$syncHash.progressBar.PerformStep()
						$syncHash.progress.Items.Add("Completed installation of darkmode.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
					}
					if ($syncHash.wallpaper.Checked) {
						$syncHash.progress.Items.Add("Bing Wallpapers has been selected.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progress.Items.Add("Enabling Bing wallpapers and setting up daily schedule...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$myPicturesFolder = [Environment]::GetFolderPath("MyPictures")
      					$myPicturesFolderBing = ($myPicturesFolder) + "\Bing Wallpapers"
        				New-Item -Path $myPicturesFolderBing -ItemType Directory
						& "C:\Computer Repair Centre\bingWallpaperInitial.ps1"
						$syncHash.progressBar.PerformStep()
						$syncHash.progress.Items.Add("Completed installation of Bing Wallpapers.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
					}
					if ($syncHash.refurbBox.Checked) {
						$syncHash.progress.Items.Add("Disabling sleep mode on AC power.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Powercfg /Change standby-timeout-ac 0
						Powercfg /Change monitor-timeout-ac 0
						$syncHash.progress.Items.Add("Sleep mode has been disabled on AC power.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					& 'C:\Computer Repair Centre\deleteFilesTask.ps1'
					$syncHash.progress.Items.Add("The installation has finished! You can safely close the program.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					if ($syncHash.kaspersky.Checked) {
						$syncHash.progress.Items.Add("The system requires a reboot to complete the installation of Kaspersky.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
					}
					if ($syncHash.microsoftOffice.Checked) {
						$syncHash.progress.Items.Add("The system requires a restart to complete the activation of Microsoft Office 2019.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progress.Items.Add("The system will restart in 1 minute, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						shutdown /r /f /t 60
						Start-Sleep 10
						$syncHash.progress.Items.Add("The system will restart in 50 seconds, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
						$syncHash.progress.Items.Add("The system will restart in 40 seconds, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
						$syncHash.progress.Items.Add("The system will restart in 30 seconds, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
						$syncHash.progress.Items.Add("The system will restart in 20 seconds, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
						$syncHash.progress.Items.Add("The system will restart in 10 seconds, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 5
						$syncHash.progress.Items.Add("The system will restart in 5 seconds, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 5
					}
					$syncHash.progressBar.PerformStep()
				}
				if ($syncHash.rebootBox.Checked) {
					$syncHash.progress.Items.Add("The system will restart in 1 minute, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						shutdown /r /f /t 60
						Start-Sleep 10
						$syncHash.progress.Items.Add("The system will restart in 50 seconds, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
						$syncHash.progress.Items.Add("The system will restart in 40 seconds, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
						$syncHash.progress.Items.Add("The system will restart in 30 seconds, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
						$syncHash.progress.Items.Add("The system will restart in 20 seconds, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
						$syncHash.progress.Items.Add("The system will restart in 10 seconds, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 5
						$syncHash.progress.Items.Add("The system will restart in 5 seconds, if you need to cancel this press close.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 5
				}
			})
		$psCmd.Runspace = $processRunspace
		$data = $psCmd.BeginInvoke()
	}
	$handler_chocoReset_Click =
	{
		$syncHash.progress.Items.Add("Removing previous installations of Chocolatey.")
		Remove-Item -Path "C:\ProgramData\chocolatey" -Force -Recurse
		$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
		$syncHash.progress.SelectedIndex = -1;
	}
	$handler_reboot_Click =
	{
		Restart-Computer -Force
	}
	$handler_close_Click =
	{
		shutdown /a
		$syncHash.crcInstaller.Close()
	}
	$OnLoadForm_StateCorrection =
	{
		$crcInstaller.WindowState = $InitialFormWindowState
	}


	## -- Computer Repair Centre Installer

	$crcInstaller.Text = "Computer Repair Centre Installer 4.2022.09.10.1"
	$crcInstaller.Name = "crcInstaller"
	$crcInstaller.DataBindings.DefaultDataSourceUpdateMode = 0
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 610
	$System_Drawing_Size.Height = 260
	$crcInstaller.ClientSize = $System_Drawing_Size
	$crcInstaller.Icon = "C:\Computer Repair Centre\computerRepairCentreIcon.ico"
	$crcInstaller.BackColor = "#2c2c2c"
	$crcInstaller.ForeColor = "White"


	## -- Install button

	$install.TabIndex = 4
	$install.Name = "install"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$install.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$install.FlatAppearance.BorderSize=0
	$System_Drawing_Size.Width = 130
	$System_Drawing_Size.Height = 23
	$install.Size = $System_Drawing_Size
	$install.Text = "Install"
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 15 + (150 * 0)
	$System_Drawing_Point.Y = 13
	$install.location = $System_Drawing_Point
	$install.DataBindings.DefaultDataSourceUpdateMode = 0
	$install.add_Click($handler_install_Click)
	$crcInstaller.Controls.Add($install)
	$install.BackColor = "#00b9ff"
	$install.ForeColor = "White"


	## -- Choco Reset button

	$chocoReset.TabIndex = 4
	$chocoReset.Name = "chocoReset"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$chocoReset.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$chocoReset.FlatAppearance.BorderSize=0
	$System_Drawing_Size.Width = 130
	$System_Drawing_Size.Height = 23
	$chocoReset.Size = $System_Drawing_Size
	$chocoReset.Text = "Reset chocolatey"
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 15 + (150 * 1)
	$System_Drawing_Point.Y = 13
	$chocoReset.location = $System_Drawing_Point
	$chocoReset.DataBindings.DefaultDataSourceUpdateMode = 0
	$chocoReset.add_Click($handler_chocoReset_Click)
	$crcInstaller.Controls.Add($chocoReset)
	$chocoReset.BackColor = "#00b9ff"
	$chocoReset.ForeColor = "White"


	## -- Reboot button

	$reboot.TabIndex = 4
	$reboot.Name = "reboot"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$reboot.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$reboot.FlatAppearance.BorderSize=0
	$System_Drawing_Size.Width = 130
	$System_Drawing_Size.Height = 23
	$reboot.Size = $System_Drawing_Size
	$reboot.Text = "Reboot"
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 15 + (150 * 2)
	$System_Drawing_Point.Y = 13
	$reboot.location = $System_Drawing_Point
	$reboot.DataBindings.DefaultDataSourceUpdateMode = 0
	$reboot.add_Click($handler_reboot_Click)
	$crcInstaller.Controls.Add($reboot)
	$reboot.BackColor = "#00b9ff"
	$reboot.ForeColor = "White"


    ## -- Close button

	$close.TabIndex = 4
	$close.Name = "close"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$close.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$close.FlatAppearance.BorderSize=0
	$System_Drawing_Size.Width = 130
	$System_Drawing_Size.Height = 23
	$close.Size = $System_Drawing_Size
	$close.Text = "Close"
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 15 + (150 * 3)
	$System_Drawing_Point.Y = 13
	$close.location = $System_Drawing_Point
	$close.DataBindings.DefaultDataSourceUpdateMode = 0
	$close.add_Click($handler_close_Click)
	$crcInstaller.Controls.Add($close)
	$close.BackColor = "#00b9ff"
	$close.ForeColor = "White"


	## -- Progress bar

	$progressBar.DataBindings.DefaultDataSourceUpdateMode = 0
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 170
	$System_Drawing_Point.Y = 43
	$progressBar.location = $System_Drawing_Point
	$progressBar.Name = "progressBar"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Height = 15
	$System_Drawing_Size.Width = 425
	$progressBar.Size = $System_Drawing_Size
	$progressBar.TabIndex = 3
	$progressBar.Minimum = 0
	$progressBar.Step = 1
	$progressBar.Value = 0
	$progressBar.Style = "Continuous"
	$crcInstaller.Controls.Add($progressBar)
	$progressBar.ForeColor = "#00b9ff"


	## -- Progress box

	$progress.FormattingEnabled = $True
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 425
	$System_Drawing_Size.Height = 160
	$progress.Size = $System_Drawing_Size
	$progress.DataBindings.DefaultDataSourceUpdateMode = 0
	$progress.Name = "listBox1"
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 170
	$System_Drawing_Point.Y = 63
	$progress.location = $System_Drawing_Point
	$progress.TabIndex = 3
	$crcInstaller.Controls.Add($progress)
	$progress.BackColor = "#2c2c2c"
	$progress.ForeColor = "White"



	## -- Computer Repair Centre OEM Information

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
	$crc.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$crc.FlatAppearance.BorderSize=0
	


	## -- Bing Wallpaper

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$wallpaper.Size = $System_Drawing_Size
	$wallpaper.TabIndex = 4
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 0)
	$System_Drawing_Point.Y = 5 + (31 * 2)
	$wallpaper.location = $System_Drawing_Point
	$wallpaper.DataBindings.DefaultDataSourceUpdateMode = 0
	$wallpaper.Name = "wallpaper"
	$wallpaper.Checked = 1
	$wallpaper.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\bing.ico")
	$crcInstaller.Controls.Add($wallpaper)
	$wallpaper.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$wallpaper.FlatAppearance.BorderSize=0


	## -- Dark Mode

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$nightMode.Size = $System_Drawing_Size
	$nightMode.TabIndex = 4
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 0)
	$System_Drawing_Point.Y = 5 + (31 * 3)
	$nightMode.location = $System_Drawing_Point
	$nightMode.DataBindings.DefaultDataSourceUpdateMode = 0
	$nightMode.Name = "nightMode"
	$nightMode.Checked = 1
	$nightMode.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\nightMode.ico")
	$crcInstaller.Controls.Add($nightMode)
	$nightMode.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$nightMode.FlatAppearance.BorderSize=0


	## -- Google Chrome

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$googleChrome.Size = $System_Drawing_Size
	$googleChrome.TabIndex = 2
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 0)
	$System_Drawing_Point.Y = 5 + (31 * 4)
	$googleChrome.location = $System_Drawing_Point
	$googleChrome.DataBindings.DefaultDataSourceUpdateMode = 0
	$googleChrome.Name = "googleChrome"
	$googleChrome.Checked = 1
	$googleChrome.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\googleChrome.ico")
	$crcInstaller.Controls.Add($googleChrome)
	$googleChrome.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$googleChrome.FlatAppearance.BorderSize=0


	## -- HP Hotkeys

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$HP.Size = $System_Drawing_Size
	$HP.TabIndex = 2
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 0)
	$System_Drawing_Point.Y = 5 + (31 * 5)
	$HP.location = $System_Drawing_Point
	$HP.DataBindings.DefaultDataSourceUpdateMode = 0
	$HP.Name = "HP"
	$HP.Checked = $HPEliteBook
	$HP.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\HP.ico")
	$crcInstaller.Controls.Add($HP)
	$HP.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$HP.FlatAppearance.BorderSize=0


	## -- iTunes

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
	$iTunes.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$iTunes.FlatAppearance.BorderSize=0


	## -- Kaspersky Internet Security

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$kaspersky.Size = $System_Drawing_Size
	$kaspersky.TabIndex = 3
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 0)
	$System_Drawing_Point.Y = 5 + (31 * 7)
	$kaspersky.location = $System_Drawing_Point
	$kaspersky.DataBindings.DefaultDataSourceUpdateMode = 0
	$kaspersky.Name = "kaspersky"
	$kaspersky.Checked = 1
	$kaspersky.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\kasperskyInternetSecurity.ico")
	$crcInstaller.Controls.Add($kaspersky)
	$kaspersky.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$kaspersky.FlatAppearance.BorderSize=0


	## -- LibreOffice

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$libreOffice.Size = $System_Drawing_Size
	$libreOffice.TabIndex = 6
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 1)
	$System_Drawing_Point.Y = 5 + (31 * 1)
	$libreOffice.location = $System_Drawing_Point
	$libreOffice.DataBindings.DefaultDataSourceUpdateMode = 0
	$libreOffice.Name = "libreOffice"
	$libreOffice.Checked = $location
	$libreOffice.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\libreOffice.ico")
	$crcInstaller.Controls.Add($libreOffice)
	$libreOffice.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$libreOffice.FlatAppearance.BorderSize=0


	## -- MalwareBytes

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$malwareBytes.Size = $System_Drawing_Size
	$malwareBytes.TabIndex = 1
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 1)
	$System_Drawing_Point.Y = 5 + (31 * 2)
	$malwareBytes.location = $System_Drawing_Point
	$malwareBytes.DataBindings.DefaultDataSourceUpdateMode = 0
	$malwareBytes.Name = "malwareBytes"
	$malwareBytes.Checked = $locationOpposite
	$malwareBytes.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\malwareBytes.ico")
	$crcInstaller.Controls.Add($malwareBytes)
	$malwareBytes.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$malwareBytes.FlatAppearance.BorderSize=0

	
	## -- Microsoft Office 2007

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$microsoftOffice2007.Size = $System_Drawing_Size
	$microsoftOffice2007.TabIndex = 1
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 1)
	$System_Drawing_Point.Y = 5 + (31 * 3)
	$microsoftOffice2007.location = $System_Drawing_Point
	$microsoftOffice2007.DataBindings.DefaultDataSourceUpdateMode = 0
	$microsoftOffice2007.Name = "microsoftOffice2007"
	$microsoftOffice2007.Checked = $locationOpposite
	$microsoftOffice2007.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\microsoftOffice2007.ico")
	$crcInstaller.Controls.Add($microsoftOffice2007)
	$microsoftOffice2007.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$microsoftOffice2007.FlatAppearance.BorderSize=0


	## -- Microsoft Office 2019

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$microsoftOffice.Size = $System_Drawing_Size
	$microsoftOffice.TabIndex = 1
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 1)
	$System_Drawing_Point.Y = 5 + (31 * 4)
	$microsoftOffice.location = $System_Drawing_Point
	$microsoftOffice.DataBindings.DefaultDataSourceUpdateMode = 0
	$microsoftOffice.Name = "microsoftOffice"
	$microsoftOffice.Checked = 0
	$microsoftOffice.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\microsoftOffice.ico")
	$crcInstaller.Controls.Add($microsoftOffice)
	$microsoftOffice.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$microsoftOffice.FlatAppearance.BorderSize=0


	## -- Mozilla Firefox

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$mozillaFirefox.Size = $System_Drawing_Size
	$mozillaFirefox.TabIndex = 1
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 1)
	$System_Drawing_Point.Y = 5 + (31 * 5)
	$mozillaFirefox.location = $System_Drawing_Point
	$mozillaFirefox.DataBindings.DefaultDataSourceUpdateMode = 0
	$mozillaFirefox.Name = "mozillaFirefox"
	$mozillaFirefox.Checked = 1
	$mozillaFirefox.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\mozillaFirefox.ico")
	$crcInstaller.Controls.Add($mozillaFirefox)
	$mozillaFirefox.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$mozillaFirefox.FlatAppearance.BorderSize=0


	## -- Mozilla Thunderbird

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$mozillaThunderbird.Size = $System_Drawing_Size
	$mozillaThunderbird.TabIndex = 1
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 1)
	$System_Drawing_Point.Y = 5 + (31 * 6)
	$mozillaThunderbird.location = $System_Drawing_Point
	$mozillaThunderbird.DataBindings.DefaultDataSourceUpdateMode = 0
	$mozillaThunderbird.Name = "mozillaThunderbird"
	$mozillaThunderbird.Checked = 0
	$mozillaThunderbird.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\mozillaThunderbird.ico")
	$crcInstaller.Controls.Add($mozillaThunderbird)
	$mozillaThunderbird.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$mozillaThunderbird.FlatAppearance.BorderSize=0


	## -- Skype

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$skype.Size = $System_Drawing_Size
	$skype.TabIndex = 7
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 1)
	$System_Drawing_Point.Y = 5 + (31 * 7)
	$skype.location = $System_Drawing_Point
	$skype.DataBindings.DefaultDataSourceUpdateMode = 0
	$skype.Name = "skype"
	$skype.Checked = 0
	$skype.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\skype.ico")
	$crcInstaller.Controls.Add($skype)
	$skype.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$skype.FlatAppearance.BorderSize=0


	## -- Teams

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$teams.Size = $System_Drawing_Size
	$teams.TabIndex = 7
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 2)
	$System_Drawing_Point.Y = 5 + (31 * 1)
	$teams.location = $System_Drawing_Point
	$teams.DataBindings.DefaultDataSourceUpdateMode = 0
	$teams.Name = "teams"
	$teams.Checked = 0
	$teams.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\teams.ico")
	$crcInstaller.Controls.Add($teams)
	$teams.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$teams.FlatAppearance.BorderSize=0

	
	## -- TeamViewer

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$teamViewer.Size = $System_Drawing_Size
	$teamViewer.TabIndex = 7
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 2)
	$System_Drawing_Point.Y = 5 + (31 * 2)
	$teamViewer.location = $System_Drawing_Point
	$teamViewer.DataBindings.DefaultDataSourceUpdateMode = 0
	$teamViewer.Name = "teamViewer"
	$teamViewer.Checked = 1
	$teamViewer.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\teamViewer.ico")
	$crcInstaller.Controls.Add($teamViewer)
	$teamViewer.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$teamViewer.FlatAppearance.BorderSize=0


	## -- uBlock Origin

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$uBlockOrigin.Size = $System_Drawing_Size
	$uBlockOrigin.TabIndex = 7
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 2)
	$System_Drawing_Point.Y = 5 + (31 * 3)
	$uBlockOrigin.location = $System_Drawing_Point
	$uBlockOrigin.DataBindings.DefaultDataSourceUpdateMode = 0
	$uBlockOrigin.Name = "uBlockOrigin"
	$uBlockOrigin.Checked = 0
	$uBlockOrigin.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\uBlockOrigin.ico")
	$crcInstaller.Controls.Add($uBlockOrigin)
	$uBlockOrigin.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$uBlockOrigin.FlatAppearance.BorderSize=0


	## -- VLC Media Player

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$vlc.Size = $System_Drawing_Size
	$vlc.TabIndex = 6
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 2)
	$System_Drawing_Point.Y = 5 + (31 * 4)
	$vlc.location = $System_Drawing_Point
	$vlc.DataBindings.DefaultDataSourceUpdateMode = 0
	$vlc.Name = "vlc"
	$vlc.Checked = 1
	$vlc.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\vlcMediaPlayer.ico")
	$crcInstaller.Controls.Add($vlc)
	$vlc.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$vlc.FlatAppearance.BorderSize=0


	## -- Windows 7 Games

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$solitare.Size = $System_Drawing_Size
	$solitare.TabIndex = 6
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 2)
	$System_Drawing_Point.Y = 5 + (31 * 5)
	$solitare.location = $System_Drawing_Point
	$solitare.DataBindings.DefaultDataSourceUpdateMode = 0
	$solitare.Name = "solitare"
	$solitare.Checked = 0
	$solitare.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\solitare.ico")
	$crcInstaller.Controls.Add($solitare)
	$solitare.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$solitare.FlatAppearance.BorderSize=0

	
	## -- Zoom

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$zoom.Size = $System_Drawing_Size
	$zoom.TabIndex = 6
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 2)
	$System_Drawing_Point.Y = 5 + (31 * 6)
	$zoom.location = $System_Drawing_Point
	$zoom.DataBindings.DefaultDataSourceUpdateMode = 0
	$zoom.Name = "zoom"
	$zoom.Checked = 0
	$zoom.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\zoom.ico")
	$crcInstaller.Controls.Add($zoom)
	$zoom.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$zoom.FlatAppearance.BorderSize=0


	## -- Reboot Box

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 50
	$System_Drawing_Size.Height = 36
	$rebootBox.Size = $System_Drawing_Size
	$rebootBox.TabIndex = 6
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 170 + (50 * 0)
	$System_Drawing_Point.Y = 5 + (31 * 7)
	$rebootBox.location = $System_Drawing_Point
	$rebootBox.DataBindings.DefaultDataSourceUpdateMode = 0
	$rebootBox.Name = "rebootBox"
	$rebootBox.Checked = 1
	$rebootBox.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\restart.ico")
	$crcInstaller.Controls.Add($rebootBox)
	$rebootBox.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$rebootBox.FlatAppearance.BorderSize=0


	## -- Sleep Box

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 50
	$System_Drawing_Size.Height = 36
	$sleep.Size = $System_Drawing_Size
	$sleep.TabIndex = 6
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 170 + (50 * 1)
	$System_Drawing_Point.Y = 5 + (31 * 7)
	$sleep.location = $System_Drawing_Point
	$sleep.DataBindings.DefaultDataSourceUpdateMode = 0
	$sleep.Name = "sleep"
	$sleep.Checked = $HPEliteBook
	$sleep.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\sleep.ico")
	$crcInstaller.Controls.Add($sleep)
	$sleep.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$sleep.FlatAppearance.BorderSize=0


	## -- Chandlers Ford Box

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 50
	$System_Drawing_Size.Height = 36
	$chandlersFord.Size = $System_Drawing_Size
	$chandlersFord.TabIndex = 6
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 170 + (50 * 2)
	$System_Drawing_Point.Y = 5 + (31 * 7)
	$chandlersFord.location = $System_Drawing_Point
	$chandlersFord.DataBindings.DefaultDataSourceUpdateMode = 0
	$chandlersFord.Name = "chandlersFord"
	$chandlersFord.Checked = $chandlersFordIP
	$chandlersFord.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\chandlersFord.ico")
	$crcInstaller.Controls.Add($chandlersFord)
	$chandlersFord.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$chandlersFord.FlatAppearance.BorderSize=0

	
	## -- Romsey Box

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 50
	$System_Drawing_Size.Height = 36
	$romsey.Size = $System_Drawing_Size
	$romsey.TabIndex = 6
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 170 + (50 * 3)
	$System_Drawing_Point.Y = 5 + (31 * 7)
	$romsey.location = $System_Drawing_Point
	$romsey.DataBindings.DefaultDataSourceUpdateMode = 0
	$romsey.Name = "romsey"
	$romsey.Checked = $romseyIP
	$romsey.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\romsey.ico")
	$crcInstaller.Controls.Add($romsey)
	$romsey.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$romsey.FlatAppearance.BorderSize=0


	## -- Highcliffe Box

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 50
	$System_Drawing_Size.Height = 36
	$highcliffe.Size = $System_Drawing_Size
	$highcliffe.TabIndex = 6
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 170 + (50 * 4)
	$System_Drawing_Point.Y = 5 + (31 * 7)
	$highcliffe.location = $System_Drawing_Point
	$highcliffe.DataBindings.DefaultDataSourceUpdateMode = 0
	$highcliffe.Name = "highcliffe"
	$highcliffe.Checked = $highcliffeIP
	$highcliffe.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\highcliffe.ico")
	$crcInstaller.Controls.Add($highcliffe)
	$highcliffe.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$highcliffe.FlatAppearance.BorderSize=0


	## -- Form

	$InitialFormWindowState = $crcInstaller.WindowState
	$crcInstaller.add_Load($OnLoadForm_StateCorrection)
	$crcInstaller.ShowDialog()
	$crcInstaller.Focus()
}
computerRepairCentreInstaller
