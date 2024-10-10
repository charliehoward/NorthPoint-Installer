## -- Copyright (c) Charlie Howard 2024 All rights reserved


## -- Download files

$computerRepairCentreIconURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/computerRepairCentreIcon.ico"
$computerRepairCentreIconPath = "C:\Computer Repair Centre\computerRepairCentreIcon.ico"
$seconds = Get-Date -Format ss
Invoke-RestMethod -Uri $computerRepairCentreIconURL -OutFile $computerRepairCentreIconPath
$BackgroundColour = "#2c2c2c"
$ButtonColour = "#00b9ff"
$date = Get-Date -Format "dd/MM"
if ($date -like '*31/10*' -or $date -like '*30/10*' -or $date -like '*29/10*' -or $date -like '*28/10*' -or $date -like '*27/10*' -or $date -like '*26/10*' -or $date -like '*25/10*') {
	$halloween = 1
	$BackgroundColour = "#ed7014"
	$ButtonColour = "#2c2c2c"
}
if ($date -like '*/12*') {
	$BackgroundColour = "#00873E"
	$ButtonColour = "#D6001C"
	$christmas = 1
}
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
			$computerRepairCentreOEMURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/computerRepairCentre/computerRepairCentreOEM.bmp"
			$computerRepairCentreOEMPath = "C:\Computer Repair Centre\computerRepairCentreOEM.bmp"
			$googleChromeURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/googleChrome.ico"
			$googleChromePath = "C:\Computer Repair Centre\googleChrome.ico"
			$kasperskyStandardURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/kasperskyStandard.ico"
			$kasperskyStandardPath = "C:\Computer Repair Centre\kasperskyStandard.ico"
			$libreOfficeURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/libreOffice.ico"
			$libreOfficePath = "C:\Computer Repair Centre\libreOffice.ico"
			$mozillaFirefoxURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/mozillaFirefox.ico"
			$mozillaFirefoxPath = "C:\Computer Repair Centre\mozillaFirefox.ico"
			$mozillaThunderbirdURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/mozillaThunderbird.ico"
			$mozillaThunderbirdPath = "C:\Computer Repair Centre\mozillaThunderbird.ico"
			$skypeURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/skype.ico"
			$skypePath = "C:\Computer Repair Centre\skype.ico"
			$teamViewerURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/teamViewer.ico"
			$teamViewerPath = "C:\Computer Repair Centre\teamViewer.ico"
			$anyDeskURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/anyDesk.ico"
			$anyDeskPath = "C:\Computer Repair Centre\anyDesk.ico"
			$teamsURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/teams.ico"
			$teamsPath = "C:\Computer Repair Centre\teams.ico"
			$malwareBytesURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/malwareBytes.ico"
			$malwareBytesPath = "C:\Computer Repair Centre\malwareBytes.ico"
			$vlcMediaPlayerURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/vlcMediaPlayer.ico"
			$vlcMediaPlayerPath = "C:\Computer Repair Centre\vlcMediaPlayer.ico"
			$bingURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/bing.ico"
			$bingPath = "C:\Computer Repair Centre\bing.ico"
			$nightModeURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/nightMode.ico"
			$nightModePath = "C:\Computer Repair Centre\nightMode.ico"
			$iTunesURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/iTunes.ico"
			$iTunesPath = "C:\Computer Repair Centre\iTunes.ico"
			$deleteFilesTaskURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/deleteFilesTask.ps1"
			$deleteFilesTaskPath = "C:\Computer Repair Centre\deleteFilesTask.ps1"
			$zoomURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/zoom.ico"
			$zoomPath = "C:\Computer Repair Centre\zoom.ico"
			$discordURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/discord.ico"
			$discordPath = "C:\Computer Repair Centre\discord.ico"
			$steamURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/steam.ico"
			$steamPath = "C:\Computer Repair Centre\steam.ico"
			$restartURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/restart.ico"
			$restartPath = "C:\Computer Repair Centre\restart.ico"
			$refurbURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/refurb.ico"
			$refurbPath = "C:\Computer Repair Centre\refurb.ico"
			$chandlersFordURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/chandlersFord.ico"
			$chandlersFordPath = "C:\Computer Repair Centre\chandlersFord.ico"
			$romseyURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/romsey.ico"
			$romseyPath = "C:\Computer Repair Centre\romsey.ico"
			$highcliffeURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/highcliffe.ico"
			$highcliffePath = "C:\Computer Repair Centre\highcliffe.ico"
			$solitareIconURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/solitare.ico"
			$solitareIconPath = "C:\Computer Repair Centre\solitare.ico"
			$HPURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/icons/HP.ico"
			$HPPath = "C:\Computer Repair Centre\HP.ico"
			$deleteFilesURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/deleteFiles.ps1"
			$deleteFilesPath = "C:\Computer Repair Centre\deleteFiles.ps1"
			if ($syncHash.christmas -like '*1*') {
				$completeSongURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/sounds/christmas.mp3"
				$completeSongPath = "C:\Computer Repair Centre\complete.mp3"
			}
			elseif ($syncHash.halloween -like '*1*') {
				$completeSongURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/sounds/halloween.mp3"
				$completeSongPath = "C:\Computer Repair Centre\complete.mp3"
			}
			else {
				$completeSongURL = "https://github.com/charliehoward/NorthPoint-Installer/raw/master/assets/sounds/win98shutdown.mp3"
				$completeSongPath = "C:\Computer Repair Centre\complete.mp3"
			}
			Invoke-RestMethod -Uri $computerRepairCentreIconURL -OutFile $computerRepairCentreIconPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $googleChromeURL -OutFile $googleChromePath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $kasperskyStandardURL -OutFile $kasperskyStandardPath
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
			Invoke-RestMethod -Uri $computerRepairCentreOEMURL -OutFile $computerRepairCentreOEMPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $zoomURL -OutFile $zoomPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $deleteFilesTaskURL -OutFile $deleteFilesTaskPath
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
			Invoke-RestMethod -Uri $anyDeskURL -OutFile $anyDeskPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $steamURL -OutFile $steamPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $discordURL -OutFile $discordPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $refurbURL -OutFile $refurbPath
			$syncHash.progressBar.PerformStep()
			Invoke-RestMethod -Uri $deleteFilesURL -OutFile $deleteFilesPath
			$syncHash.progressBar.PerformStep() 
			Invoke-RestMethod -Uri $completeSongURL -OutFile $completeSongPath
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
	$downloadBox.BackColor = $BackgroundColour
	$downloadBox.ForeColor = "White"


	## -- Downloading text

	$downloadText.Text = "Downloading files, please wait..."
	$downloadText.AutoSize = $true
	$downloadText.Width = 25
	$downloadText.Height = 10
	$downloadText.location = New-Object System.Drawing.Point (180,17)
	$downloadText.Font = 'Microsoft Sans Serif,10'
	$downloadBox.Controls.Add($downloadText)
	$downloadText.BackColor = $BackgroundColour
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
	$progressBar.Maximum = 28
	$progressBar.Step = 1
	$progressBar.Value = 0
	$downloadBox.Controls.Add($progressBar)
	$progressBar.Style  = "Continuous"
	$progressBar.ForeColor = $ButtonColour
	

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
$internetProtocolCF = [System.Net.Dns]::GetHostAddresses("brm.crchq.net")
$internetProtocolCFManual = "192.168.0.15"
$internetProtocolR = [System.Net.Dns]::GetHostAddresses("first.crchq.net")
$internetProtocolRManual = "81.134.32.116"
$internetProtocolHC =[System.Net.Dns]::GetHostAddresses("fast.crchq.net")
$internetProtocolHCManual = "81.130.137.162"
$user = $env:UserName
if ($internetProtocolCF -like $internetProtocol -Or $internetProtocolCFManual -like $internetProtocol) {
	$chandlersFordIP = 1
	$romseyIP = 0
	$highcliffeIP = 0
	$locationR = 0
	$locationCF = 1
}
if ($internetProtocolR -like $internetProtocol -Or $internetProtocolRManual -like $internetProtocol) {
	$chandlersFordIP = 0
	$romseyIP = 1
	$highcliffeIP = 0
	$locationR = 1
	$locationCF = 0
}
if ($internetProtocolHC -like $internetProtocol -Or $internetProtocolHCManual -like $internetProtocol) {
	$chandlersFordIP = 0
	$romseyIP = 0
	$highcliffeIP = 1
	$locationR = 1
	$locationCF = 0
}
if ($operatingSystem -like '*10.0.2*') {
	$windows10 = 0
}
else {
	$windows10 = 1
}
$HPEliteBook = 0
$computerSystem = (Get-WmiObject -Class:Win32_ComputerSystem)
if ($computerSystem.Model -like '*EliteBook*'){
	$HPEliteBook = 1
}


function computerRepairCentreInstaller {
	[reflection.assembly]::loadwithpartialname("System.Windows.Forms")
	[reflection.assembly]::loadwithpartialname("System.Drawing")
	$crcInstaller = New-Object System.Windows.Forms.Form
	$install = New-Object System.Windows.Forms.Button
	$reboot = New-Object System.Windows.Forms.Button
	$close = New-Object System.Windows.Forms.Button
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
	$skype = New-Object System.Windows.Forms.CheckBox
	$teamViewer = New-Object System.Windows.Forms.CheckBox
	$teams = New-Object System.Windows.Forms.CheckBox
	$iTunes = New-Object System.Windows.Forms.CheckBox
	$wallpaper = New-Object System.Windows.Forms.CheckBox
	$nightMode = New-Object System.Windows.Forms.CheckBox
	$rebootBox = New-Object System.Windows.Forms.CheckBox
	$zoom = New-Object System.Windows.Forms.CheckBox
	$romsey = New-Object System.Windows.Forms.CheckBox
	$chandlersFord = New-Object System.Windows.Forms.CheckBox
	$highcliffe = New-Object System.Windows.Forms.CheckBox
	$solitare = New-Object System.Windows.Forms.CheckBox
	$anyDesk = New-Object System.Windows.Forms.CheckBox
	$discord = New-Object System.Windows.Forms.CheckBox
	$steamPowered = New-Object System.Windows.Forms.CheckBox
	$refurb = New-Object System.Windows.Forms.CheckBox
	$HP = New-Object System.Windows.Forms.CheckBox
	$changeLog = New-Object System.Windows.Forms.LinkLabel
	$version = New-Object System.Windows.Forms.Label
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
	$syncHash.skype = $skype
	$syncHash.teamViewer = $teamViewer
	$syncHash.teams = $teams
	$syncHash.iTunes = $iTunes
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
	$syncHash.zoom = $zoom
	$syncHash.refurb = $refurb
	$syncHash.HPEliteBook = $HPEliteBook
	$syncHash.romsey = $romsey
	$syncHash.chandlersFord = $chandlersFord
	$syncHash.highcliffe = $highcliffe
	$syncHash.birthday = $birthday
	$syncHash.birthdayName = $birthdayName
	$syncHash.solitare = $solitare
	$syncHash.HP = $HP
	$syncHash.anyDesk = $anyDesk
	$syncHash.steamPowered = $steamPowered
	$syncHash.discord = $discord
	$syncHash.christmas = $christmas
	$syncHash.halloween = $halloween
	$syncHash.locationCF = $locationCF
	$b1 = $false
	$b2 = $false
	$b3 = $false

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
	if ($date -like '*25/07*') {
		$birthday = 1
		$birthdayName = "Geeth"
	}


	## -- Install button click

	$handler_install_Click =
	{
		$processRunspace = [runspacefactory]::CreateRunspace()
		$processRunspace.ApartmentState = "STA"
		$processRunspace.ThreadOptions = "ReuseThread"
		$processRunspace.Open()
		$processRunspace.SessionStateProxy.SetVariable("syncHash",$syncHash)
		$psCmd = [powershell]::Create().AddScript({
				$syncHash.progress.Items.Add("Last updated: 10th of October 2024")
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
				if ($syncHash.halloween -like '*1*') { 
					$syncHash.progress.Items.Add("Boo! Happy Halloween!")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
				}
				if ($syncHash.christmas -like '*1*') {
					$song = Get-Random -Maximum 7
					if ($song -like '*0*') {
						Start-Sleep 2
						$syncHash.progress.Items.Add("Oh, the weather outside is frightful")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("But the fire is so delightful")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("And since we've no place to go")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("Let it snow, let it snow, let it snow")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
					}
					if ($song -like '*1*') {
						Start-Sleep 2
						$syncHash.progress.Items.Add("I just want you for my own")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("More than you can ever know")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("Make my wish come true")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("All I want for Christmas is you")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
					}
					if ($song -like '*2*') {
						Start-Sleep 2
						$syncHash.progress.Items.Add("Last Christmas, I gave you my heart")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("But the very next day you gave it away")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("This year, to save me from tears")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("I'll give it to someone special")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
					}
					if ($song -like '*3*') {
						Start-Sleep 2
						$syncHash.progress.Items.Add("The boys of the NYPD choir")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("Still singing, Galway Bay")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("And the bells are ringing out")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("For Christmas Day")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
					}
					if ($song -like '*4*') {
						Start-Sleep 2
						$syncHash.progress.Items.Add("Room is swaying, records playing")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("All the old songs we love to hear")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("All I wish that every day was Christmas")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("What a nice way to spend the year")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
					}
					if ($song -like '*5*') {
						Start-Sleep 2
						$syncHash.progress.Items.Add("It's beginning to look a lot like Christmas")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("Toys in every store")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("But the prettiest sight to see is the holly that will be")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("On your front door")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
					}
					if ($song -like '*6*') {
						Start-Sleep 2
						$syncHash.progress.Items.Add("Well I wish it could be Christmas every day")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("When the kids start singing and the bang begins to play")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("Oh, I wish it could be Christmas every day")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("Let the bells ring out for Christmas")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
					}
					if ($song -like '*7*') {
						Start-Sleep 2
						$syncHash.progress.Items.Add("Rockin' around the Christmas tree")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("Have a happy holiday")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("Everyone's dancing merrily")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 2
						$syncHash.progress.Items.Add("In the new old-fashioned way")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Start-Sleep 10
					}
				}
				$syncHash.progressBar.Maximum = 7
				if ($syncHash.crc.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.mozillaFirefox.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.mozillaThunderbird.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.googleChrome.Checked) { $syncHash.progressBar.Maximum += 1 }
				if (($syncHash.mozillaFirefox.Checked) -or ($syncHash.googleChrome.Checked)) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.kaspersky.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.vlc.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.libreOffice.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.skype.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.teamViewer.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.anyDesk.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.iTunes.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.wallpaper.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.nightMode.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.zoom.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.teams.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.steamPowered.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.discord.Checked) { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.solitare.Checked) { $syncHash.progressBar.Maximum += 3 }
				if ($syncHash.HP.Checked) { $syncHash.progressBar.Maximum += 3 }
				if ($syncHash.microsoftOffice2007.Checked) { $syncHash.progressBar.Maximum += 2 }
				if ($syncHash.operatingSystem -like '*6.1*') { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.operatingSystem -like '*6.2*') { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.operatingSystem -like '*6.3*') { $syncHash.progressBar.Maximum += 1 }
				if ($syncHash.operatingSystem -like '*10.0.1*') { $syncHash.progressBar.Maximum += 8 }
				if ($syncHash.operatingSystem -like '*10.0.2*') { $syncHash.progressBar.Maximum += 8 }
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
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportHours -Value "Mon-Fri 9:15am-5:00pm - Sat 9:15am-4:00pm" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportPhone -Value "01794 517142" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportURL -Value "https://www.thecomputerrepaircentre.co.uk/romsey" -Force
					}
					elseif ($syncHash.chandlersFord.Checked) {
						$syncHash.progress.Items.Add("Installer being run from Chandlers Ford.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						New-Item -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name Logo -Value "C:\Computer Repair Centre\computerRepairCentreOEM.bmp" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name Manufacturer -Value "Computer Repair Centre" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportHours -Value "Mon-Fri 9:00am-5:00pm - Sat 9:00am-4:00pm" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportPhone -Value "08712 244129" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportURL -Value "https://www.thecomputerrepaircentre.co.uk/chandlers-ford" -Force
					}
					elseif ($syncHash.highcliffe.Checked) {
						$syncHash.progress.Items.Add("Installer being run from Highcliffe.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						New-Item -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name Logo -Value "C:\Computer Repair Centre\computerRepairCentreOEM.bmp" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name Manufacturer -Value "Computer Repair Centre" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportHours -Value "Mon-Fri 9:15am-5:00pm - Sat 9:00am-2:00pm" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportPhone -Value "01425 278579" -Force
						Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation -Name SupportURL -Value "https://www.thecomputerrepaircentre.co.uk/Highcliffe" -Force
					}
					$syncHash.progress.Items.Add("Completed installation of Computer Repair Centre OEM information.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				if ($syncHash.refurb.Checked) {
					$syncHash.progress.Items.Add("Disabling sleep on AC power...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					powercfg /change monitor-timeout-ac 0
					Start-Sleep 2
					powercfg /change standby-timeout-ac 0
					$syncHash.progressBar.PerformStep()
				}
				else {
					$syncHash.progress.Items.Add("Disabling sleep on AC power temporarily...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					powercfg /change monitor-timeout-ac 0
					Start-Sleep 2
					powercfg /change standby-timeout-ac 0
					$syncHash.progressBar.PerformStep()
				}
				$syncHash.progress.Items.Add("Downloading all prerequisites...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				Invoke-RestMethod -Uri "https://files.crchq.net/installer/installerApps.zip" -OutFile "C:\Computer Repair Centre\installerApps.zip"
				Invoke-RestMethod -Uri "https://files.crchq.net/installer/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle" -OutFile "C:\Computer Repair Centre\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
				Invoke-RestMethod -Uri "https://files.crchq.net/installer/NanaZip_3.1.1080.0.msixbundle" -OutFile "C:\Computer Repair Centre\NanaZip_3.1.1080.0.msixbundle"
				$syncHash.progress.Items.Add("Installing all prerequisites...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$syncHash.progress.Items.Add("- Installing NanaZip...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$syncHash.progress.Items.Add("- Completed installation of NanaZip.")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$syncHash.progressBar.PerformStep()
				Add-AppxPackage -Path "C:\Computer Repair Centre\NanaZip_3.1.1080.0.msixbundle"
				Start-Sleep 5
				$syncHash.progress.Items.Add("- Updating Windows Store...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				& 'C:\Program Files\WindowsApps\40174MouriNaruto.NanaZip_3.1.1080.0_x64__gnj4mf6z9tkrc\NanaZip.Windows.exe' x "C:\Computer Repair Centre\installerApps.zip" "-oC:\Computer Repair Centre" -aoa
				Get-CimInstance -Namespace "Root\cimv2\mdm\dmmap" -ClassName "MDM_EnterpriseModernAppManagement_AppManagement01" | Invoke-CimMethod -MethodName UpdateScanMethod
				$syncHash.progressBar.PerformStep()
				Start-Sleep 5
				$syncHash.progress.Items.Add("- Installing winget...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				Add-AppxPackage -Path "C:\Computer Repair Centre\Microsoft.UI.Xaml.2.7_7.2208.15002.0_x64__8wekyb3d8bbwe.Appx"
				Start-Sleep 10
				Add-AppxPackage -Path "C:\Computer Repair Centre\Microsoft.VCLibs.x64.14.00.Desktop.Appx"
				Start-Sleep 10
				Add-AppxPackage -Path "C:\Computer Repair Centre\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
				Start-Sleep 10
				Add-AppxPackage -Path "C:\Computer Repair Centre\Microsoft.UI.Xaml.2.7_7.2208.15002.0_x64__8wekyb3d8bbwe.Appx"
				Start-Sleep 10
				Add-AppxPackage -Path "C:\Computer Repair Centre\Microsoft.VCLibs.x64.14.00.Desktop.Appx"
				Start-Sleep 10
				Add-AppxPackage -Path "C:\Computer Repair Centre\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
				Start-Sleep 10
				$syncHash.progressBar.PerformStep()
				$syncHash.progress.Items.Add("- Installing Microsoft .NET Windows Desktop Runtime 3.1...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				winget install Microsoft.DotNet.DesktopRuntime.3_1 -e --accept-source-agreements --accept-package-agreements
				$syncHash.progressBar.PerformStep()
				$syncHash.progress.Items.Add("- Installing Microsoft .NET Windows Desktop Runtime 5.0...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$programList = winget list
				if ($programList -like '*Microsoft.DotNet.DesktopRuntime.5*') { 
					$syncHash.progress.Items.Add("- Microsoft .NET Windows Desktop Runtime 5.0 is already installed.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				else {
					winget install --id=Microsoft.DotNet.DesktopRuntime.5 -e --accept-source-agreements --accept-package-agreements
					$syncHash.progressBar.PerformStep()
				}
				$syncHash.progress.Items.Add("- Installing Microsoft .NET Windows Desktop Runtime 6.0...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$programList = winget list
				if ($programList -like '*Microsoft.DotNet.DesktopRuntime.6*') { 
					$syncHash.progress.Items.Add("- Microsoft .NET Windows Desktop Runtime 6.0 is already installed.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				else {
					winget install --id=Microsoft.DotNet.DesktopRuntime.6 -e --accept-source-agreements --accept-package-agreements
					$syncHash.progressBar.PerformStep()
				}
				$syncHash.progress.Items.Add("- Installing Microsoft .NET Windows Desktop Runtime 7.0...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$programList = winget list
				if ($programList -like '*Microsoft.DotNet.DesktopRuntime.7*') { 
					$syncHash.progress.Items.Add("- Microsoft .NET Windows Desktop Runtime 7.0 is already installed.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				else {
					winget install --id=Microsoft.DotNet.DesktopRuntime.7 -e --accept-source-agreements --accept-package-agreements 
					$syncHash.progressBar.PerformStep()
				}
				$syncHash.progress.Items.Add("Completed installation of all prerequisites...")
				$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
				$syncHash.progress.SelectedIndex = -1;
				$syncHash.progressBar.PerformStep()
				if ($syncHash.anyDesk.Checked) {
					$syncHash.progress.Items.Add("AnyDesk is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = winget list
					if ($programList -like '*AnyDesk*') { 
						$syncHash.progress.Items.Add("AnyDesk is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing AnyDesk...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Invoke-RestMethod -Uri "https://download.anydesk.com/AnyDesk.exe" -OutFile "C:\Computer Repair Centre\AnyDesk.exe"
						& 'C:\Computer Repair Centre\AnyDesk.exe' --install "C:\Program Files (x86)\AnyDesk" --create-shortcuts --create-desktop-icon --silent
						$timeout = New-TimeSpan -Minutes 5
						$endTime = (Get-Date).Add($timeout)
						Do {
							Start-Sleep 10
							$programList = winget list
						}
						Until ($programList -like '*AnyDesk*' -or ((Get-Date) -gt $endTime))
						$syncHash.progress.Items.Add("Completed installation of AnyDesk.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
				}
				if ($syncHash.discord.Checked) {
					$syncHash.progress.Items.Add("Discord is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = winget list
					if ($programList -like '*Discord*') { 
						$syncHash.progress.Items.Add("Discord is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing Discord...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						winget install --id=Discord.Discord -e --accept-source-agreements --accept-package-agreements
						$programList = winget list
						if ($programList -like '*Discord*') {
							$syncHash.progress.Items.Add("Completed installation of Discord.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
						}
						else {
							$syncHash.progress.Items.Add("The installation of Discord has failed.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progress.Items.Add("Retrying the installation of Discord.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
							winget install --id=Discord.Discord -e --force --accept-source-agreements --accept-package-agreements
						}
					}
				}
				if ($syncHash.googleChrome.Checked) {
					$syncHash.progress.Items.Add("Google Chrome is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = winget list
					if ($programList -like '*Google.Chrome*') { 
						$syncHash.progress.Items.Add("Google Chrome is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing Google Chrome...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						winget install Google.Chrome
						$programList = winget list
						if ($programList -like '*Google.Chrome*') {
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
							$syncHash.progress.Items.Add("Downloading Google Chrome.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							Invoke-RestMethod -Uri "https://dl.google.com/dl/chrome/install/googlechromestandaloneenterprise.msi" -OutFile "C:\Computer Repair Centre\chrome.msi"
							$syncHash.progress.Items.Add("Installing Google Chrome...")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							msiexec /package "C:\Computer Repair Centre\chrome.msi" /passive
							$timeout = New-TimeSpan -Minutes 5
							$endTime = (Get-Date).Add($timeout)
							Do {
								Start-Sleep 10
								$programList = winget list
							}
							Until ($programList -like '*Google.Chrome*' -or ((Get-Date) -gt $endTime))
							$syncHash.progress.Items.Add("Completed installation of Google Chrome.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
						}
					}
				}
				if ($syncHash.iTunes.Checked) {
					$syncHash.progress.Items.Add("iTunes is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = winget list
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
						winget install --id=Apple.iTunes -e --accept-source-agreements --accept-package-agreements
						$programList = winget list
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
							winget install --id=Apple.iTunes -e --force --accept-source-agreements --accept-package-agreements
						}
					}
				}
				if ($syncHash.kaspersky.Checked) {
					$syncHash.progress.Items.Add("Kaspersky Standard is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					if ($programList -like '*Kaspersky*') { 
						$syncHash.progress.Items.Add("Kaspersky Standard is already installed...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Downloading Kaspersky Standard installer...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Invoke-RestMethod -Uri "https://files.crchq.net/installer/kasStandard.exe" -OutFile "C:\Computer Repair Centre\kasStandard.exe"
						Start-Sleep 2
						$syncHash.progress.Items.Add("Installing Kaspersky Standard.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						& 'C:\Computer Repair Centre\kasStandard.exe' /s /mybirthdate=1986‑12‑23 /pAGREETOEULA=1 /pAGREETOPRIVACYPOLICY=1
						$timeout = New-TimeSpan -Minutes 5
						$endTime = (Get-Date).Add($timeout)
						Do {
							Start-Sleep 10
							$programList = winget list
						}
						Until ($programList -like '*Kaspersky*' -or ((Get-Date) -gt $endTime))
						$syncHash.progress.Items.Add("Completed installation of Kaspersky Standard.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
				}
				if ($syncHash.libreOffice.Checked) {
					$syncHash.progress.Items.Add("LibreOffice is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = winget list
					$syncHash.progress.Items.Add("Downloading LibreOffice.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					Invoke-RestMethod -Uri "https://files.crchq.net/installer/libreOffice.msi" -OutFile "C:\Computer Repair Centre\libreOffice.msi"
					$syncHash.progress.Items.Add("Installing LibreOffice...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					msiexec /package "C:\Computer Repair Centre\libreOffice.msi" /passive
					$timeout = New-TimeSpan -Minutes 5
					$endTime = (Get-Date).Add($timeout)
					Do {
						Start-Sleep 10
						$programList = winget list
					}
					Until ($programList -like '*TheDocumentFoundation.LibreOffice*' -or ((Get-Date) -gt $endTime))
					$syncHash.progress.Items.Add("Completed installation of LibreOffice.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				if ($syncHash.malwareBytes.Checked) {
					$syncHash.progress.Items.Add("MalwareBytes is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = winget list
					if ($programList -like '*Malwarebytes*') { 
						$syncHash.progress.Items.Add("MalwareBytes is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing MalwareBytes...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						winget install --id=Malwarebytes.Malwarebytes -e --accept-source-agreements --accept-package-agreements
						$programList = winget list
						if ($programList -like '*Malwarebytes*') {
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
							winget install --id=Malwarebytes.Malwarebytes -e --force --accept-source-agreements --accept-package-agreements
						}
					}
				}	
				if ($syncHash.mozillaFirefox.Checked) {
					$syncHash.progress.Items.Add("Mozilla Firefox is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = winget list
					if ($programList -like '*Mozilla.Firefox*') { 
						$syncHash.progress.Items.Add("Mozilla Firefox is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing Mozilla Firefox...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						winget install --id=Mozilla.Firefox -e --accept-source-agreements --accept-package-agreements
						$programList = winget list
						if ($programList -like '*Mozilla.Firefox*') {
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
							$syncHash.progress.Items.Add("Downloading Mozilla Firefox.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							Invoke-RestMethod -Uri "https://download.mozilla.org/?product=firefox-msi-latest-ssl&os=win64&lang=en-GB" -OutFile "C:\Computer Repair Centre\firefox.msi"
							$syncHash.progress.Items.Add("Installing Mozilla Firefox...")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							msiexec /package "C:\Computer Repair Centre\firefox.msi" /passive
							$timeout = New-TimeSpan -Minutes 5
							$endTime = (Get-Date).Add($timeout)
							Do {
								Start-Sleep 10
								$programList = winget list
							}
							Until ($programList -like '*Mozilla.Firefox*' -or ((Get-Date) -gt $endTime))
							$syncHash.progress.Items.Add("Completed installation of Mozilla Firefox.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
						}
					}
				}
				if ($syncHash.mozillaThunderbird.Checked) {
					$syncHash.progress.Items.Add("Mozilla Thunderbird is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = winget list
					if ($programList -like '*Mozilla.Thunderbird*') { 
						$syncHash.progress.Items.Add("Mozilla Thunderbird is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing Mozilla Thunderbird...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						winget install --id=Mozilla.Thunderbird -e --accept-source-agreements --accept-package-agreements
						$programList = winget list
							if ($programList -like '*Mozilla.Thunderbird*') {
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
							winget install --id=Mozilla.Thunderbird -e --force --accept-source-agreements --accept-package-agreements
						}
					}
				}
				if ($syncHash.skype.Checked) {
					$syncHash.progress.Items.Add("Skype is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = winget list
					if ($programList -like '*Skype*') { 
						$syncHash.progress.Items.Add("Skype is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing Skype...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						winget install --id=Microsoft.Skype -e --accept-source-agreements --accept-package-agreements
						$programList = winget list
						if ($programList -like '*Skype*') {
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
							winget install --id=Microsoft.Skype -e --force --accept-source-agreements --accept-package-agreements
						}
					}
				}
				if ($syncHash.steamPowered.Checked) {
					$syncHash.progress.Items.Add("Steam is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = winget list
					if ($programList -like '*Steam*') { 
						$syncHash.progress.Items.Add("Steam is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing Steam...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						winget install --id=Valve.Steam -e --accept-source-agreements --accept-package-agreements
						$programList = winget list
						if ($programList -like '*Steam*') {
							$syncHash.progress.Items.Add("Completed installation of Steam.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
						}
						else {
							$syncHash.progress.Items.Add("The installation of Steam has failed.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progress.Items.Add("Retrying the installation of Steam.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
							winget install --id=Valve.Steam -e --force --accept-source-agreements --accept-package-agreements
						}
					}
				}
				if ($syncHash.teams.Checked) {
					$syncHash.progress.Items.Add("Microsoft Teams is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = winget list
					if ($programList -like '*Microsoft.Teams*') { 
						$syncHash.progress.Items.Add("Microsoft Teams is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing Microsoft Teams...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						winget install --id=Microsoft.Teams -e --accept-source-agreements --accept-package-agreements
						$programList = winget list
						if ($programList -like '*Microsoft.Teams*') {
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
							winget install --id=Microsoft.Teams -e --force --accept-source-agreements --accept-package-agreements
						}
					}
				}
				if ($syncHash.teamViewer.Checked) {
					$syncHash.progress.Items.Add("TeamViewer is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = winget list
					if ($programList -like '*TeamViewer*') { 
						$syncHash.progress.Items.Add("TeamViewer is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing TeamViewer...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						winget install --id=TeamViewer.TeamViewer -e --accept-source-agreements --accept-package-agreements
						$programList = winget list
						if ($programList -like '*TeamViewer*') {
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
							winget install --id=TeamViewer.TeamViewer -e --force --accept-source-agreements --accept-package-agreements
						}
					}
				}
				if ($syncHash.vlc.Checked) {
					$syncHash.progress.Items.Add("VLC Media Player is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = winget list
					if ($programList -like '*VideoLAN.VLC*') { 
						$syncHash.progress.Items.Add("VLC Media Player is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing VLC Media Player...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						winget install --id=VideoLAN.VLC -e --accept-source-agreements --accept-package-agreements
						$programList = winget list
						if ($programList -like '*VideoLAN.VLC*') {
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
							$syncHash.progress.Items.Add("Downloading VLC Media Player.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							Invoke-RestMethod -Uri "https://ask4.mm.fcix.net/videolan-ftp/vlc/3.0.19/win64/vlc-3.0.19-win64.msi" -OutFile "C:\Computer Repair Centre\vlc.msi"
							$syncHash.progress.Items.Add("Installing VLC Media Player...")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							msiexec /package "C:\Computer Repair Centre\vlc.msi" /passive
							$timeout = New-TimeSpan -Minutes 5
							$endTime = (Get-Date).Add($timeout)
							Do {
								Start-Sleep 10
								$programList = winget list
							}
							Until ($programList -like '*VideoLAN.VLC*' -or ((Get-Date) -gt $endTime))
							$syncHash.progress.Items.Add("Completed installation of VLC Media Player.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
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
					& 'C:\Program Files\WindowsApps\40174MouriNaruto.NanaZip_3.1.1080.0_x64__gnj4mf6z9tkrc\NanaZip.Windows.exe' x "C:\Computer Repair Centre\Windows7Games.zip" "-oC:\Computer Repair Centre" -aoa
					Start-Sleep 10
					$syncHash.progressBar.PerformStep()
					$syncHash.progress.Items.Add("Installing Windows 7 Games...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					& 'C:\Computer Repair Centre\Windows7Games.exe' /S
					Start-Sleep 30
					$DesktopPath = [Environment]::GetFolderPath("Desktop")
					$syncHash.progress.Items.Add("Completed installation of Windows 7 Games.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
					$syncHash.progress.Items.Add("Adding Desktop items...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\Chess.lnk" "$DesktopPath\Chess.lnk"
					Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\FreeCell.lnk" "$DesktopPath\FreeCell.lnk"
					Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\Hearts.lnk" "$DesktopPath\Hearts.lnk"
					Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\Mahjong.lnk" "$DesktopPath\Mahjong.lnk"
					Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\Minesweeper.lnk" "$DesktopPath\Minesweeper.lnk"
					Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\Solitaire.lnk" "$DesktopPath\Solitaire.lnk"
					Copy-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\SpiderSolitaire.lnk" "$DesktopPath\SpiderSolitaire.lnk"
					$syncHash.progressBar.PerformStep()
				}
				if ($syncHash.zoom.Checked) {
					$syncHash.progress.Items.Add("Zoom is selected.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$programList = winget list
					if ($programList -like '*Zoom*') { 
						$syncHash.progress.Items.Add("Zoom is already installed.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progressBar.PerformStep()
					}
					else {
						$syncHash.progress.Items.Add("Installing Zoom...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						winget install --id=Zoom.Zoom -e --accept-source-agreements --accept-package-agreements
						$programList = winget list
						if ($programList -like '*Zoom*') {
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
							winget install --id=Zoom.Zoom -e --force --accept-source-agreements --accept-package-agreements
						}
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
					& 'C:\Program Files\WindowsApps\40174MouriNaruto.NanaZip_3.1.1080.0_x64__gnj4mf6z9tkrc\NanaZip.Windows.exe' x "C:\Computer Repair Centre\HPHotkey.zip" "-oC:\Computer Repair Centre" -aoa
					Start-Sleep 10
					$syncHash.progressBar.PerformStep()
					$syncHash.progress.Items.Add("Installing HP Hotkey Support...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					Start-Process -wait 'C:\Computer Repair Centre\SP103615\src\install.cmd'
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
					$syncHash.progress.Items.Add("This computer is running OS 8 (lol). This OS is no longer supported by this software.")
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
					$programList = winget list
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
						$syncHash.progress.Items.Add("Installing Bing Wallpapers...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$programList = winget list
						if ($programList -like '*BingWallpaper*') { 
							$syncHash.progress.Items.Add("Bing Wallpapers is already installed.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
						}
						else {
							winget install Microsoft.BingWallpaper -e --accept-source-agreements --accept-package-agreements
							Sleep-Start 5
							$syncHash.progressBar.PerformStep()
							$syncHash.progress.Items.Add("Completed installation of Bing Wallpapers.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
						}
					}
					if ($syncHash.nightMode.Checked) {
						$syncHash.progress.Items.Add("Dark mode is selected.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progress.Items.Add("Enabling darkmode...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0
						Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 0
						$syncHash.progressBar.PerformStep()
						$syncHash.progress.Items.Add("Completed installation of darkmode.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
					}
					& 'C:\Computer Repair Centre\deleteFilesTask.ps1'
					if ($syncHash.refurb.Checked) {
					}
					else {
						$syncHash.progress.Items.Add("Re-enabling sleep on AC power...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						powercfg /change monitor-timeout-ac 30
						Start-Sleep 2
						powercfg /change standby-timeout-ac 60
						$syncHash.progressBar.PerformStep()
					}
					$syncHash.progress.Items.Add("The installation has finished! You can safely close the program.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				if ($syncHash.operatingSystem -like '*10.0.2*') {
					$syncHash.progress.Items.Add("This computer is running Windows 11.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progress.Items.Add("Disabling device encryption...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\BitLocker" -Name PreventDeviceEncryption -Value 1
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
					$syncHash.progress.Items.Add("Enabling end task in taskbar...")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\TaskbarDeveloperSettings" -Name "TaskbarEndTask" -Type DWord -Value 1
					$syncHash.progressBar.PerformStep()
					if ($syncHash.nightMode.Checked) {
						$syncHash.progress.Items.Add("Dark mode is selected.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progress.Items.Add("Enabling darkmode...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						start-process -filepath "C:\Windows\Resources\Themes\dark.theme"; timeout /t 3; taskkill /im "systemsettings.exe" /f
						Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0
						Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 0
						$syncHash.progressBar.PerformStep()
						$syncHash.progress.Items.Add("Completed installation of darkmode.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
					}
					if ($syncHash.wallpaper.Checked) {
						$syncHash.progress.Items.Add("Bing Wallpapers has been selected.")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$syncHash.progress.Items.Add("Installing Bing Wallpapers...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						$programList = winget list
						if ($programList -like '*BingWallpaper*') { 
							$syncHash.progress.Items.Add("Bing Wallpapers is already installed.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
							$syncHash.progressBar.PerformStep()
						}
						else {
							winget install Microsoft.BingWallpaper -e --accept-source-agreements --accept-package-agreements
							Sleep-Start 5
							$syncHash.progressBar.PerformStep()
							$syncHash.progress.Items.Add("Completed installation of Bing Wallpapers.")
							$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
							$syncHash.progress.SelectedIndex = -1;
						}
					}
					if ($synchash.locationCF -eq 1) {
						$syncHash.progress.Items.Add("Set to not move taskbar in CF...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
					}
					else {
						$syncHash.progress.Items.Add("Moving taskbar align to left...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						Set-ItemProperty -Path HKCU:\software\microsoft\windows\currentversion\explorer\advanced -Name 'TaskbarAl' -Type 'DWord' -Value 0
					}
					$syncHash.progressBar.PerformStep()
					& 'C:\Computer Repair Centre\deleteFilesTask.ps1'
					if ($syncHash.refurb.Checked) {
					}
					else {
						$syncHash.progress.Items.Add("Re-enabling sleep on AC power...")
						$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
						$syncHash.progress.SelectedIndex = -1;
						powercfg /change monitor-timeout-ac 30
						Start-Sleep 2
						powercfg /change standby-timeout-ac 60
						$syncHash.progressBar.PerformStep()
					}
					$syncHash.progress.Items.Add("The installation has finished! You can safely close the program.")
					$syncHash.progress.SelectedIndex = $syncHash.progress.Items.Count - 1;
					$syncHash.progress.SelectedIndex = -1;
					$syncHash.progressBar.PerformStep()
				}
				Remove-Item 'C:\Computer Repair Centre\*.log'
				Add-Type -AssemblyName presentationCore
				$mediaPlayer = New-Object system.windows.media.mediaplayer
				$mediaPlayer.open('C:\Computer Repair Centre\complete.mp3')
				$mediaPlayer.Play()
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

	$crcInstaller.Text = "Computer Repair Centre Installer"
	$crcInstaller.Name = "crcInstaller"
	$crcInstaller.DataBindings.DefaultDataSourceUpdateMode = 0
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 610
	$System_Drawing_Size.Height = 280
	$crcInstaller.ClientSize = $System_Drawing_Size
	$crcInstaller.Icon = "C:\Computer Repair Centre\computerRepairCentreIcon.ico"
	$crcInstaller.BackColor = $BackgroundColour
	$crcInstaller.ForeColor = "White"


	## -- Install button

	$install.TabIndex = 4
	$install.Name = "install"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$install.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$install.FlatAppearance.BorderSize=0
	$System_Drawing_Size.Width = 185
	$System_Drawing_Size.Height = 23
	$install.Size = $System_Drawing_Size
	$install.Text = "Install"
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 15
	$System_Drawing_Point.Y = 13
	$install.location = $System_Drawing_Point
	$install.DataBindings.DefaultDataSourceUpdateMode = 0
	$install.add_Click($handler_install_Click)
	$crcInstaller.Controls.Add($install)
	$install.BackColor = $ButtonColour
	$install.ForeColor = "White"


	## -- Reboot button

	$reboot.TabIndex = 4
	$reboot.Name = "reboot"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$reboot.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$reboot.FlatAppearance.BorderSize=0
	$System_Drawing_Size.Width = 185
	$System_Drawing_Size.Height = 23
	$reboot.Size = $System_Drawing_Size
	$reboot.Text = "Restart"
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 212.5
	$System_Drawing_Point.Y = 13
	$reboot.location = $System_Drawing_Point
	$reboot.DataBindings.DefaultDataSourceUpdateMode = 0
	$reboot.add_Click($handler_reboot_Click)
	$crcInstaller.Controls.Add($reboot)
	$reboot.BackColor = $ButtonColour
	$reboot.ForeColor = "White"


   ## -- Close button

	$close.TabIndex = 4
	$close.Name = "close"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$close.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$close.FlatAppearance.BorderSize=0
	$System_Drawing_Size.Width = 185
	$System_Drawing_Size.Height = 23
	$close.Size = $System_Drawing_Size
	$close.Text = "Close"
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 410
	$System_Drawing_Point.Y = 13
	$close.location = $System_Drawing_Point
	$close.DataBindings.DefaultDataSourceUpdateMode = 0
	$close.add_Click($handler_close_Click)
	$crcInstaller.Controls.Add($close)
	$close.BackColor = $ButtonColour
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
	$progressBar.ForeColor = $ButtonColour


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
	$nightMode.Checked = $locationR
	$nightMode.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\nightMode.ico")
	$crcInstaller.Controls.Add($nightMode)
	$nightMode.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$nightMode.FlatAppearance.BorderSize=0


	## -- AnyDesk

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$anyDesk.Size = $System_Drawing_Size
	$anyDesk.TabIndex = 2
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 0)
	$System_Drawing_Point.Y = 5 + (31 * 4)
	$anyDesk.location = $System_Drawing_Point
	$anyDesk.DataBindings.DefaultDataSourceUpdateMode = 0
	$anyDesk.Name = "anyDesk"
	$anyDesk.Checked = 1
	$anyDesk.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\anyDesk.ico")
	$crcInstaller.Controls.Add($anyDesk)
	$anyDesk.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$anyDesk.FlatAppearance.BorderSize=0


	## -- Discord

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$discord.Size = $System_Drawing_Size
	$discord.TabIndex = 6
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 0)
	$System_Drawing_Point.Y = 5 + (31 * 5)
	$discord.location = $System_Drawing_Point
	$discord.DataBindings.DefaultDataSourceUpdateMode = 0
	$discord.Name = "discord"
	$discord.Checked = 0
	$discord.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\discord.ico")
	$crcInstaller.Controls.Add($discord)
	$discord.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$discord.FlatAppearance.BorderSize=0


	## -- Google Chrome

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$googleChrome.Size = $System_Drawing_Size
	$googleChrome.TabIndex = 2
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 0)
	$System_Drawing_Point.Y = 5 + (31 * 6)
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
	$System_Drawing_Point.Y = 5 + (31 * 7)
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
	$System_Drawing_Point.X = 16 + (45 * 1)
	$System_Drawing_Point.Y = 5 + (31 * 1)
	$iTunes.location = $System_Drawing_Point
	$iTunes.DataBindings.DefaultDataSourceUpdateMode = 0
	$iTunes.Name = "iTunes"
	$iTunes.Checked = 0
	$iTunes.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\iTunes.ico")
	$crcInstaller.Controls.Add($iTunes)
	$iTunes.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$iTunes.FlatAppearance.BorderSize=0


	## -- Kaspersky Standard

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$kaspersky.Size = $System_Drawing_Size
	$kaspersky.TabIndex = 3
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 1)
	$System_Drawing_Point.Y = 5 + (31 * 2)
	$kaspersky.location = $System_Drawing_Point
	$kaspersky.DataBindings.DefaultDataSourceUpdateMode = 0
	$kaspersky.Name = "kaspersky"
	$kaspersky.Checked = $locationCF
	$kaspersky.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\kasperskyStandard.ico")
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
	$System_Drawing_Point.Y = 5 + (31 * 3)
	$libreOffice.location = $System_Drawing_Point
	$libreOffice.DataBindings.DefaultDataSourceUpdateMode = 0
	$libreOffice.Name = "libreOffice"
	$libreOffice.Checked = 1
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
	$System_Drawing_Point.Y = 5 + (31 * 4)
	$malwareBytes.location = $System_Drawing_Point
	$malwareBytes.DataBindings.DefaultDataSourceUpdateMode = 0
	$malwareBytes.Name = "malwareBytes"
	$malwareBytes.Checked = $locationCF
	$malwareBytes.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\malwareBytes.ico")
	$crcInstaller.Controls.Add($malwareBytes)
	$malwareBytes.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$malwareBytes.FlatAppearance.BorderSize=0


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


	## -- Steam

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$steamPowered.Size = $System_Drawing_Size
	$steamPowered.TabIndex = 6
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 2)
	$System_Drawing_Point.Y = 5 + (31 * 1)
	$steamPowered.location = $System_Drawing_Point
	$steamPowered.DataBindings.DefaultDataSourceUpdateMode = 0
	$steamPowered.Name = "steamPowered"
	$steamPowered.Checked = 0
	$steamPowered.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\steam.ico")
	$crcInstaller.Controls.Add($steamPowered)
	$steamPowered.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$steamPowered.FlatAppearance.BorderSize=0


	## -- Teams

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$teams.Size = $System_Drawing_Size
	$teams.TabIndex = 7
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 16 + (45 * 2)
	$System_Drawing_Point.Y = 5 + (31 * 2)
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
	$System_Drawing_Point.Y = 5 + (31 * 3)
	$teamViewer.location = $System_Drawing_Point
	$teamViewer.DataBindings.DefaultDataSourceUpdateMode = 0
	$teamViewer.Name = "teamViewer"
	$teamViewer.Checked = 0
	$teamViewer.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\teamViewer.ico")
	$crcInstaller.Controls.Add($teamViewer)
	$teamViewer.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$teamViewer.FlatAppearance.BorderSize=0


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
	$vlc.Checked = $windows10
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


	## -- Chandlers Ford Box

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$chandlersFord.Size = $System_Drawing_Size
	$chandlersFord.TabIndex = 6
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 170 + (50 * 0)
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
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$romsey.Size = $System_Drawing_Size
	$romsey.TabIndex = 6
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 170 + (50 * 1)
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
	$System_Drawing_Size.Width = 36
	$System_Drawing_Size.Height = 36
	$highcliffe.Size = $System_Drawing_Size
	$highcliffe.TabIndex = 6
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 170 + (50 * 2)
	$System_Drawing_Point.Y = 5 + (31 * 7)
	$highcliffe.location = $System_Drawing_Point
	$highcliffe.DataBindings.DefaultDataSourceUpdateMode = 0
	$highcliffe.Name = "highcliffe"
	$highcliffe.Checked = $highcliffeIP
	$highcliffe.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\highcliffe.ico")
	$crcInstaller.Controls.Add($highcliffe)
	$highcliffe.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$highcliffe.FlatAppearance.BorderSize=0


	## -- Refurb Box

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 70
	$System_Drawing_Size.Height = 36
	$refurb.Size = $System_Drawing_Size
	$refurb.TabIndex = 6
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 170 + (38 * 7.2)
	$System_Drawing_Point.Y = 5 + (31 * 7)
	$refurb.location = $System_Drawing_Point
	$refurb.DataBindings.DefaultDataSourceUpdateMode = 0
	$refurb.Name = "refurb"
	$refurb.Checked = 0
	$refurb.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\refurb.ico")
	$crcInstaller.Controls.Add($refurb)
	$refurb.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$refurb.FlatAppearance.BorderSize=0


	## -- Restart Box

	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Width = 70
	$System_Drawing_Size.Height = 36
	$rebootBox.Size = $System_Drawing_Size
	$rebootBox.TabIndex = 6
	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 170 + (50 * 7.2)
	$System_Drawing_Point.Y = 5 + (31 * 7)
	$rebootBox.location = $System_Drawing_Point
	$rebootBox.DataBindings.DefaultDataSourceUpdateMode = 0
	$rebootBox.Name = "rebootBox"
	$rebootBox.Checked = 1
	$rebootBox.Image = [System.Drawing.Image]::FromFile("C:\Computer Repair Centre\restart.ico")
	$crcInstaller.Controls.Add($rebootBox)
	$rebootBox.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
	$rebootBox.FlatAppearance.BorderSize=0


	
	## -- Version

	$version.Location = New-Object System.Drawing.Size(14,258)
	$version.Size = New-Object System.Drawing.Size(250,20)
	$version.Text = "Version 5.2024.10.10.0"
	$crcInstaller.Controls.Add($version)


	## -- Changelog

	$changeLog.Location = New-Object System.Drawing.Size(515,258)
	$changeLog.Size = New-Object System.Drawing.Size(150,20)
	$changeLog.LinkColor = "WHITE"
	$changeLog.ActiveLinkColor = "RED"
	$changeLog.Text = "View Changelog"
	$changeLog.add_Click({[system.Diagnostics.Process]::start("https://github.com/charliehoward/NorthPoint-Installer/blob/master/README.md")})
	$crcInstaller.Controls.Add($changeLog)


	## -- Form

	$InitialFormWindowState = $crcInstaller.WindowState
	$crcInstaller.add_Load($OnLoadForm_StateCorrection)
	$crcInstaller.ShowDialog()
	$crcInstaller.Focus()
}
computerRepairCentreInstaller
