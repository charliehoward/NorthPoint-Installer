## -- Copyright (c) Charlie Howard 2016-2021 All rights reserved


param (
    [string]$size = "",
    [string]$idx = "0",
    [string]$mkt = "en-GB",
    [string]$savePath = "",
    [switch]$RegisterSchedule = $true,
    [switch]$UnregisterSchedule = $false,

    [ValidateSet("NoChange", "Center", "Tile", "Stretch", "Fit", "Fill")]
    [string]$wallpaperStyle = "NoChange"
)
$currentWallpaper = split-path (Get-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name Wallpaper).Wallpaper -Leaf
Add-Type @"
using System;
using System.Runtime.InteropServices;
using Microsoft.Win32;
namespace Wallpaper
{
    public enum Style : int {
        NoChange, Center, Tile, Stretch, Fit, Fill
    }
    public class Setter {
        public const int SetDesktopWallpaper = 20;
        public const int UpdateIniFile = 0x01;
        public const int SendWinIniChange = 0x02;
        [DllImport("user32.dll", SetLastError = true, CharSet = CharSet.Auto)]
        private static extern int SystemParametersInfo (int uAction, int uParam, string lpvParam, int fuWinIni);
        public static void SetWallpaper ( string path, Wallpaper.Style style ) {
            RegistryKey key = Registry.CurrentUser.OpenSubKey("Control Panel\\Desktop", true);
            switch (style) {
                case Style.Center:
                    key.SetValue(@"WallpaperStyle", "1");
                    key.SetValue(@"TileWallpaper", "0");
                    break;
                case Style.Tile:
                    key.SetValue(@"WallpaperStyle", "1");
                    key.SetValue(@"TileWallpaper", "1");
                    break;
                case Style.Stretch:
                    key.SetValue(@"WallpaperStyle", "2");
                    key.SetValue(@"TileWallpaper", "0");
                    break;
                case Style.Fit:
                    key.SetValue(@"WallpaperStyle", "6");
                    key.SetValue(@"TileWallpaper", "0");
                    break;
                case Style.Fill:
                    key.SetValue(@"WallpaperStyle", "10");
                    key.SetValue(@"TileWallpaper", "0");
                    break;
                case Style.NoChange:
                    break;
            }
            key.Close();
            SystemParametersInfo( SetDesktopWallpaper, 0, path, UpdateIniFile | SendWinIniChange );
        }
    }
}
"@
Function Get-IdealImageDimensionsArray($idealSize) {
    $validImageDimensionArray = New-Object System.Collections.ArrayList
    $validImageDimensionArray.Add("1920x1200") | Out-Null
    $validImageDimensionArray.Add("1920x1080") | Out-Null
    $validImageDimensionArray.Add("1366x768") | Out-Null
    $validImageDimensionArray.Add("1024x768") | Out-Null
    $validImageDimensionArray.Remove($idealSize)
    $validImageDimensionArray.Insert(0, $idealSize)
    $validImageDimensionArray
}
Function Get-Image($imageSize, $idx, $mkt) {
    $urlBing = "http://www.bing.com"
    $urlBingImageFeed = "{0}/HPImageArchive.aspx?format=xml&idx={1}&n=1&mkt={2}" -f $urlBing, $idx, $mkt
    $urlImageBasePath = ""
    $urlImage = ""
    $savelocation = ""
    Write-Debug ("Feed URL: " + $urlBingImageFeed)
    $webClient = New-Object System.Net.WebClient
    $page = $webClient.DownloadString($urlBingImageFeed)
    $regex = [regex] '<urlBase>(.*)</urlBase>'
    $match = $regex.Match($page)
    $urlImageBasePath = $match.Groups[1].Value
    Write-Debug ("Image base path: $urlImageBasePath") -Verbose
    $urlImage = "{0}{1}_{2}.jpg" -f $urlBing, $urlImageBasePath, $imageSize
    Write-Debug "Image URL: $urlImage"
    if ($savePath -eq "") {
        $myPicturesFolder = [Environment]::GetFolderPath("MyPictures")
    } else {
        $myPicturesFolder = $savePath
    }
    $savelocation = [io.path]::combine($myPicturesFolder, 'bingimageoftheday.jpg')
    Try {
        $webClient.DownloadFile($urlImage, $savelocation)
        if (!(Test-Path $savelocation) -or ((Get-Item $savelocation).length -lt 1kb)) {
            $savelocation = ""
        }
    }
    Catch [System.Net.WebException] {
        $savelocation = ""
    }
    return $savelocation
}
function Get-DpiFactor {
    $DPISetting = (Get-ItemProperty 'HKCU:\Control Panel\Desktop\WindowMetrics' -Name AppliedDPI).AppliedDPI
    switch ($DPISetting)
    {
        96 {return 1}
        120 {return 1.25}
        144 {return 1.5}
        192 {return 2}
    }
    return 1
}
function Get-ScreenResolution {
    [void] [Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
    $s = [System.Windows.Forms.SystemInformation]::PrimaryMonitorSize
    $dpi = Get-DpiFactor
    [decimal]$w = [math]::Floor($s.Width * $dpi)
    [decimal]$h = [math]::Floor($s.Height * $dpi)
    return "${w}x${h}"
}
function Register-Schedule($taskPath, $taskName) {
    Unregister-Schedule $taskPath $taskName
    $argument = $script:MyInvocation.MyCommand.Path
    if ($size -ne "") { $argument += " -size $size" }
    if ($idx -ne 0) { $argument += " -idx $idx" }
    if ($mkt -ne "en-GB") { $argument += " -mkt $mkt" }
    if ($wallpaperStyle -ne "NoChange") { $argument += " -wallpaperStyle $wallpaperStyle" }
    $trigger = New-ScheduledTaskTrigger -AtLogon
    $action = New-ScheduledTaskAction -Execute "wscript.exe" -Argument '"C:\Computer Repair Centre\hidden.vbs" "C:\Computer Repair Centre\bingWallpaperTask.ps1"'
    $settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries
    $task = Register-ScheduledTask -TaskPath $taskPath -TaskName $taskName -Trigger $trigger -Action $action -Settings $settings -RunLevel Highest
}
function Unregister-Schedule($taskPath, $taskName) {
    $existingTask = Get-ScheduledTask | where { $_.TaskName -eq $taskName -and $_.TaskPath -eq $taskPath}
    if ($existingTask) {
        Unregister-ScheduledTask -TaskName $taskName -Confirm:$false
    }
}
$taskPath = "\"
$taskName = "Bing Wallpaperer Daily Update"
if ($currentWallpaper -like '*bingimageoftheday*') {
    Register-Schedule $taskPath $taskName
}
else {
    Unregister-Schedule $taskPath $taskName
    exit
}
if ($size -eq "") {
    $size = Get-ScreenResolution
}
$imageSizes = Get-IdealImageDimensionsArray $size
foreach ($imageSize in $imageSizes) {
    $saveLocation = Get-Image $imageSize $idx $mkt

    if ($saveLocation -ne "") {
        [Wallpaper.Setter]::SetWallpaper($saveLocation, $wallpaperStyle)
        break
    }
}
