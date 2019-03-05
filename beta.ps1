function northPointInstaller {

$northPoint = New-Object System.Windows.Forms.Form
$downloadProgressBar = New-Object System.Windows.Forms.ProgressBar

$processRunspace =[runspacefactory]::CreateRunspace()
$processRunspace.ApartmentState = "STA"
$processRunspace.ThreadOptions = "ReuseThread"
$processRunspace.Open()
$processRunspace.SessionStateProxy.SetVariable("syncHash",$syncHash)
$syncHash = [hashtable]::Synchronized(@{})
$syncHash.downloadProgressBar = $downloadProgressBar


$psCmd = [PowerShell]::Create().AddScript({
  $taskbarpin7URL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/taskbarPin7.ps1"
  $taskbarpin7Path = "C:\Computer Repair Centre\taskbarPin7.ps1"
  $taskbarpin10URL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/taskbarPin10.ps1"
  $taskbarpin10Path = "C:\Computer Repair Centre\taskbarPin10.ps1"
  $computerRepairCentreOEMURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/computerRepairCentreOEM.bmp"
  $computerRepairCentreOEMPath = "C:\Computer Repair Centre\computerRepairCentreOEM.bmp"
  $computerRepairCentreIconURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/computerRepairCentreIcon.ico"
  $computerRepairCentreIconPath = "C:\Computer Repair Centre\computerRepairCentreIcon.ico"
  $googleChromeURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/googleChrome.ico"
  $googleChromePath = "C:\Computer Repair Centre\googleChrome.ico"
  $kasperskyInternetSecurityURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/kasperskyInternetSecurity.ico"
  $kasperskyInternetSecurityPath = "C:\Computer Repair Centre\kasperskyInternetSecurity.ico"
  $libreOfficeURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/libreOffice.ico"
  $libreOfficePath = "C:\Computer Repair Centre\libreOffice.ico"
  $mozillaFirefoxURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/mozillaFirefox.ico"
  $mozillaFirefoxPath = "C:\Computer Repair Centre\mozillaFirefox.ico"
  $mozillaThunderbirdURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/mozillaThunderbird.ico"
  $mozillaThunderbirdPath = "C:\Computer Repair Centre\mozillaThunderbird.ico"
  $skypeURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/skype.ico"
  $skypePath = "C:\Computer Repair Centre\skype.ico"
  $teamViewerURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/teamViewer.ico"
  $teamViewerPath = "C:\Computer Repair Centre\teamViewer.ico"
  $uBlockOriginURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/uBlockOrigin.ico"
  $uBlockOriginPath = "C:\Computer Repair Centre\uBlockOrigin.ico"
  $vlcMediaPlayerURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/vlcMediaPlayer.ico"
  $vlcMediaPlayerPath = "C:\Computer Repair Centre\vlcMediaPlayer.ico"
  $birthdayURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/birthday.gif"
  $birthdayPath = "C:\Computer Repair Centre\birthday.gif"
  $wallpaperURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/wallpaper.ico"
  $wallpaperPath = "C:\Computer Repair Centre\wallpaper.ico"
  $pinURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/pin.ico"
  $pinPath = "C:\Computer Repair Centre\pin.ico"
  $wallpapersURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/wallpapers.zip"
  $wallpapersPath = "C:\Computer Repair Centre\wallpapers.zip"
  $themeSwitcher7URL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/themeSwitcher7.exe"
  $themeSwitcher7Path = "C:\Computer Repair Centre\themeSwitcher7.exe"
  $themeSwitcher10URL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/themeSwitcher10.exe"
  $themeSwitcher10Path = "C:\Computer Repair Centre\themeSwitcher10.exe"
  $windows7ThemeURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/computerRepairCentre7.theme"
  $windows7ThemePath = "C:\Computer Repair Centre\computerRepairCentre7.theme"
  $windows10ThemeURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/computerRepairCentre10.theme"
  $windows10ThemePath = "C:\Computer Repair Centre\computerRepairCentre10.theme"
  $iTunesURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/iTunes.ico"
  $iTunesPath = "C:\Computer Repair Centre\iTunes.ico"
  $chromeExtensionURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/chromeExtension.ps1"
  $chromeExtensionPath = "C:\Computer Repair Centre\chromeExtension.ps1"
  $firefoxExtensionURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/firefoxExtension.ps1"
  $firefoxExtensionPath = "C:\Computer Repair Centre\firefoxExtension.ps1"
  $mozillaLocalSettingsURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/local-settings.js"
  $mozillaLocalSettingsPath = "C:\Computer Repair Centre\local-settings.js"
  $mozillaConfigURL = "https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/assets/mozilla.cfg"
  $mozillaConfigPath = "C:\Computer Repair Centre\mozilla.cfg"
  Invoke-RestMethod -Uri $computerRepairCentreIconURL -OutFile $computerRepairCentreIconPath
  $syncHash.downloadProgressBar.Step = 2
  Invoke-RestMethod -Uri $googleChromeURL -OutFile $googleChromePath
  $syncHash.downloadProgressBar.Step = 3
  Invoke-RestMethod -Uri $kasperskyInternetSecurityURL -OutFile $kasperskyInternetSecurityPath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $libreOfficeURL -OutFile $libreOfficePath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $mozillaFirefoxURL -OutFile $mozillaFirefoxPath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $mozillaThunderbirdURL -OutFile $mozillaThunderbirdPath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $skypeURL -OutFile $skypePath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $teamViewerURL -OutFile $teamViewerPath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $vlcMediaPlayerURL -OutFile $vlcMediaPlayerPath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $birthdayURL -OutFile $birthdayPath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $iTunesURL -OutFile $iTunesPath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $wallpaperURL -OutFile $wallpaperPath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $pinURL -OutFile $pinPath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $uBlockOriginURL -OutFile $uBlockOriginPath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $taskbarpin7URL -OutFile $taskbarpin7Path
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $taskbarpin10URL -OutFile $taskbarpin10Path
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $computerRepairCentreOEMURL -OutFile $computerRepairCentreOEMPath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $chromeExtensionURL -OutFile $ChromeExtensionPath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $firefoxExtensionURL -OutFile $firefoxExtensionPath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $mozillaConfigURL -OutFile $mozillaConfigPath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $mozillaLocalSettingsURL -OutFile $mozillaLocalSettingsPath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $taskbarpinURL -OutFile $taskbarpinPath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $wallpapersURL -OutFile $wallpapersPath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $themeSwitcher7URL -OutFile $themeSwitcher7Path
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $windows7ThemeURL -OutFile $windows7ThemePath
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $themeSwitcher10URL -OutFile $themeSwitcher10Path
  $syncHash.downloadProgressBar.PerformStep()
  Invoke-RestMethod -Uri $windows10ThemeURL -OutFile $windows10ThemePath
  $syncHash.downloadProgressBar.PerformStep()
})

$northPoint.Text = "Computer Repair Centre Installer 3.0.9.11"
$northPoint.Name = "form1"
$northPoint.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Width = 550
$System_Drawing_Size.Height = 240
$northPoint.ClientSize = $System_Drawing_Size

$downloadProgressBar.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 20
$System_Drawing_Point.Y = 20
$downloadProgressBar.Location = $System_Drawing_Point
$downloadProgressBar.Name = "downloadProgressBar"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 34
$System_Drawing_Size.Width = 500
$downloadProgressBar.Size = $System_Drawing_Size
$downloadProgressBar.TabIndex = 3
$downloadProgressBar.Minimum = 0
$downloadProgressBar.Maximum = 27
$downloadProgressBar.Step = 1
$downloadProgressBar.Value = 1

$northPoint.Controls.Add($downloadProgressBar)

$psCmd.Runspace = $processRunspace
$data = $psCmd.BeginInvoke()

$InitialFormWindowState = $northPoint.WindowState
$northPoint.add_Load($OnLoadForm_StateCorrection)
$northPoint.ShowDialog()
$northPoint.Focus()
}
northPointInstaller
