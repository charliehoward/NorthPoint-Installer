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

            // Set wallpaper after style change to ensure the change is picked up
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
        Write-Debug ("Downloading image: " + $urlImage) -Verbose
        $webClient.DownloadFile($urlImage, $savelocation)
        if (!(Test-Path $savelocation) -or ((Get-Item $savelocation).length -lt 1kb)) {
            Write-Warning "There was a problem downloading the image $urlImage"
            $savelocation = ""
        }
    }
    Catch [System.Net.WebException] {
        Write-Warning "Unable to download image $urlImage"
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
    $action = New-ScheduledTaskAction -Execute "PowerShell.exe -windowstyle hidden" -Argument $argument
    $settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries
    $task = Register-ScheduledTask -TaskPath $taskPath -TaskName $taskName -Trigger $trigger -Action $action -Settings $settings -RunLevel Highest
    Write-Output "    Scheduled task registered."
}
function Unregister-Schedule($taskPath, $taskName) {
    $existingTask = Get-ScheduledTask | where { $_.TaskName -eq $taskName -and $_.TaskPath -eq $taskPath}
    if ($existingTask) {
        Unregister-ScheduledTask -TaskName $taskName -Confirm:$false
        Write-Output "    Scheduled task unregistered"
    } else {
        Write-Output "    Scheduled task doesn't currently exist"
    }
}
$taskPath = "\"
$taskName = "Bing Wallpaperer Daily Update"
Write-Output ""
Write-Output ">>> Bing Image of the Day Wallpaper Updater <<<"
if ($UnregisterSchedule) {
    Write-Output "... Unregistering daily schedule task"
    Unregister-Schedule $taskPath $taskName
}
if ($RegisterSchedule) {
    Write-Output "... Registering daily schedule task"
    Register-Schedule $taskPath $taskName
}
if ($size -eq "") {
    $size = Get-ScreenResolution
}
$imageSizes = Get-IdealImageDimensionsArray $size
foreach ($imageSize in $imageSizes) {
    Write-Output "... Trying to get image - size: $imageSize, idx: $idx, mkt: $mkt"
    $saveLocation = Get-Image $imageSize $idx $mkt

    if ($saveLocation -ne "") {
        Write-Output "... Image successfully saved to: $saveLocation"
        [Wallpaper.Setter]::SetWallpaper($saveLocation, $wallpaperStyle)
        Write-Output "... Wallpaper set with style of $wallpaperStyle"
        break
    }
    Write-Warning "Unable to download image at this size: $imageSize"
}
