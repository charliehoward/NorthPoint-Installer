<p align="center"> 
  <img alt=".NET 4.8" src="https://img.shields.io/badge/.NET-4.8-512BD4?style=for-the-badge"> 
  <img alt="Arch" src="https://img.shields.io/badge/Arch-x64-blue?style=for-the-badge"> 
  <img alt="Platform" src="https://img.shields.io/badge/platform-Windows%2010%2F11-0078D4?style=for-the-badge&logo=windows&logoColor=white"> 
  <a href="https://github.com/ProfessorShroom/PlutoPoint-Installer/blob/main/LICENSE.md"><img alt="License" src="https://img.shields.io/badge/license-Proprietary-red?style=for-the-badge"></a> 
</p>

__DEPRECATED__

[NorthPoint Installer has been replaced by PlutoPoint Installer](https://github.com/ProfessorShroom/PlutoPoint-Installer)

## NorthPoint Installer

**_Copyright © Charlie Howard 2016-2026 All rights reserved_**

A PowerShell based GUI installer for Windows 10/11, may also run on Windows 8.1/7 but this is no longer tested.

Installs Microsoft .NET (3.1, 5.0, 6.0, 7.0) and NanaZip by default as these are needed or recommended for the installer to work correctly.

Gives you the option to install the Computer Repair Centre OEM information, Bing Wallpapers, Dark mode, AnyDesk, BitDefender, Discord, Google Chrome, LibreOffice, MalwareBytes, Mozilla Firefox, Mozilla Thunderbird, Skype, Steam, VLC Media Player, and Zoom.

If run on Windows 10 or Windows 11 it disables hibernation mode and Wi-Fi sense.

If run on Windows 11 it will disable automatic device encryption and add "end task" to the programs in the taskbar.

Sets the default browser to either Google Chrome or Mozilla Firefox depending on what has been selected, or Google Chrome if both are selected.

Disables sleep and screen timeout if plugged into AC power during the install and then revert it once it has completed to prevent the computer going to sleep during the install which can cause issues, you also get the option to prevent sleep on AC power permanently with the "Refurb" box.

### Changelog

#### Latest Update

**Update 5.2026.02.04.0**

- Moved Version/Readme link to [professorshroom.com](https://professorshroom.com)

#### Older Updates

<details markdown="1">
<summary><strong>Version 5.x - The Winget Update</strong></summary>

**Version 5.2025.07.05.1 / 5.2025.07.05.0**

- **_5.2025.07.05.1_** Updated multiple download URL's in scripts.
- **_5.2025.07.05.0_** Updated launcher exe, changed download URL to crcinstallerps.professorshroom.com to allow URL changes in the future, just incase anyone actually uses this.

**Version 5.2024.11.27.0**

- Removed LibreOffice XML as that was causing LibreOffice to not open.
- Updated this old version incase Steve is still using it.

**Version 5.2024.11.08.0**

- [Added notice that there is now a version 6.](https://github.com/charliehoward/PlutoPoint-Installer)

**Version 5.2024.11.03.0**

- Moved some scripts to scripts folder.
- Now sets LibreOffice default file type to Office 2007-2021 (docx, xlsx, etc.).

**Version 5.2024.11.02.4 / 5.2024.11.02.3 / 5.2024.11.02.2 / 5.2024.11.02.1 / 5.2024.11.02.0**

- **_5.2024.11.02.4_** Changed some icon paths as I accidentally left in some test paths.
- **_5.2024.11.02.3_** Added apps folder.
- **_5.2024.11.02.3_** Changed power times if not not run on a refurb.
- **_5.2024.11.02.2_** Fixed a couple of broken icons.
- **_5.2024.11.02.2_** Removed Teams as doesn't seem needed now.
- **_5.2024.11.02.1_** Fixed issue with folders not being created.
- **_5.2024.11.02.0_** Removed Windows 7 games, as I don't think anyones ever used it.
- **_5.2024.11.02.0_** Added BitDefender as the world is being silly about Kaspersky.
- **_5.2024.11.02.0_** Fixed Office 2007 URL typo.
- **_5.2024.11.02.0_** Updated all the icons.
- **_5.2024.11.02.0_** Added subfolders to 'C:\Computer Repair Centre' to tidy up installation folder.
- **_5.2024.11.02.0_** Removed TeamViewer.

**Version 5.2024.10.31.0**

- Made the check for Kaspersky more precise as if run on a system with Kapersky VPN or Kaspersky Password Manager it would skip the installation as it believed Kaspersky was already installed.
- Readded Microsoft Office 2007, but will extract to the Desktop. Old people.

**Version 5.2024.10.29.6 / 5.2024.10.29.5 / 5.2024.10.29.4 / 5.2024.10.29.3 / 5.2024.10.29.2 / 5.2024.10.29.1 / 5.2024.10.29.0**

- **_5.2024.10.29.6_** Changed Halloween sound effect as it's probably a bit over the top.
- **_5.2024.10.29.5_** Fixed elseIf command downloading correct sound file.
- **_5.2024.10.29.4_** Forgot date in download section.
- **_5.2024.10.29.3_** Reorganised some lines of code.
- **_5.2024.10.29.2_** Forgot to add sync hash to second part of the download code.
- **_5.2024.10.29.1_** Added sync hash for holidays during download section.
- **_5.2024.10.29.0_** Corrected typo that stopped the sound from changing on holidays.

**Version 5.2024.10.23.1 / 5.2024.10.23.0**

- **_5.2024.10.23.1_** Fixed some typos that have been in the readme for a loooooong time.
- **_5.2024.10.23.0_** Removed iTunes as it's no longer supported.

**Version 5.2024.10.12.0**

- Added birthday colours and sound.

**Version 5.2024.10.11.0**

- Reduced Halloween to 3 days.
- Changed Christmas colours to red and white.

**Version 5.2024.10.10.0**

- Added completed sound effect once installer is finished.
- Added task end button to taskbar in Windows 11.

**Version 5.2024.10.07.3 / 5.2024.10.07.2 / 5.2024.10.07.1 / 5.2024.10.07.0**

- **_5.2024.10.07.3_** Renamed LibreOffice installation file.
- **_5.2024.10.07.2_** Fixed NanaZip as they changed the exe name.
- **_5.2024.10.07.1_** Updated NanaZip.
- **_5.2024.10.07.1_** Removed all old Office assets.
- **_5.2024.10.07.1_** Updated version number on installer exe.
- **_5.2024.10.07.1_** Updated LibreOffice msi to newer version.
- **_5.2024.10.07.0_** Removed Office 2007 and moved CF to LibreOffice.

**Version 5.2024.08.09.0**

- Changed website URL's and opening hours in OEM info.

**Version 5.2024.05.09.0**

- Will now disable automatic device encryption is run on Windows 11.

**Version 5.2024.05.03.1 / 5.2024.05.03.0**

- **_5.2024.05.03.1_** Dropped a }.
- **_5.2024.05.03.0_** Removed LibreOffice winget install as it keeps hanging.

**Version 5.2024.05.02.1 / 5.2024.05.02.0**

- **_5.2024.05.02.1_** Removed line that causes installing Winget to hang.
- **_5.2024.05.02.0_** Winget installation will now run twice, it seems on some machines it isn't installing correctly.

**Version 5.2024.04.20.0**

- Removed dash from disabling sleep on AC power.

**Version 5.2024.04.15.0**

- Updated Chandlers Ford IP.
- Added manual check for IP in CF and Romsey if the hardlinks aren't working.

**Version 5.2024.04.02.0**

- Moved the screen and sleep pause to before downloading the prerequisites.

**Version 5.2024.03.25.2 / 5.2024.03.25.1 / 5.2024.03.25.0**

- **_5.2024.03.25.2_** If run in Chandlers Ford then the taskbar will not be moved to the left on Windows 11.
- **_5.2024.03.25.1_** Changed winget installation command.
- **_5.2024.03.25.0_** The reason for recent hanging is somehow the installer is downloading old files despite not even being listed, so I've removed them to see if that helps.

**Version 5.2024.03.23.0**

- Tried to fix hanging on winget installation.
- Updated NanaZip.
- Updated Winget.

**Version 5.2024.03.22.0**

- Updated LibreOffice on the server as the link no longer exists on their site. Tried to fix occasional hanging.

**Version 5.2024.02.29.0**

- If run on Windows 11 the taskbar will be aligned to the left like in Windows 10.

**Version 5.2024.02.7.0**

- Tried to fix Google Chrome installation from failing on the first attempt.

**Version 5.2024.01.20.0**

- Forget to add download for the refurb icon.

**Version 5.2024.01.19.1 / 5.2024.01.19.0**

- **_5.2024.01.19.1_** Added refurb icon.
- **_5.2024.01.19.0_** Added refurb box so not all devices are set to never sleep.

**Version 5.2024.01.13.0**

- Removed old apps from initial download.

**Version 5.2024.01.03.3 / 5.2024.01.03.2 / 5.2024.01.03.1 / 5.2024.01.03.0**

- **_5.2024.01.03.3_** I accidentally removed winget so I've readded it.
- **_5.2024.01.03.2_** Forgot to change NanaZip URL.
- **_5.2024.01.03.1_** Fixed typos.
- **_5.2024.01.03.0_** Moved all the apps to our server instead of git.

**Version 5.2024.01.02.1 / 5.2024.01.02.0**

- **_5.2024.01.02.1_** Forgot quotations around URLs.
- **_5.2024.01.02.0_** Moved app downloads to during the install rather than before to speed up initial download.

**Version 5.2023.11.03.0**

- Any log files will be removed before creating a new one just incase the installer is run more than once. Correctly this time.

**Version 5.2023.10.27.0**

- Buttons weren't Halloweeny enough.

**Version 5.2023.10.20.2 / 5.2023.10.20.1 / 5.2023.10.20.0**

- **_5.2023.10.20.2_** Any log files will be removed before creating a new one just incase the installer is run more than once.
- **_5.2023.10.20.1_** Once all files are cleaned up a log file will be create in C:\Computer Repair Centre\ with the installation date.
- **_5.2023.10.20.0_** Removed unzip of cleanupo files as they're no longer zipped.

**Version 5.2023.10.19.2 / 5.2023.10.19.1 / 5.2023.10.19.0**

- **_5.2023.10.19.2_** Tidied up the script that deletes files after installation so you don't get an error if Office 2007 wasn't installed.
- **_5.2023.10.19.1_** Forgot to remove Bing files unzip during NanaZip installation.
- **_5.2023.10.19.0_** Removed all of the old Bing Wallpaper installation files as the new method seems to work fine.

**Version 5.2023.10.18.2 / 5.2023.10.18.1 / 5.2023.10.18.0**

- **_5.2023.10.18.2_** Forgot to actually add it.
- **_5.2023.10.18.1_** Testing out new Bing Wallpapers installation method.
- **_5.2023.10.18.0_** Fixed dark mode not activating when selected.

**Version 5.2023.10.16.1 / 5.2023.10.16.0**

- **_5.2023.10.16.1_** Moved app to our server.
- **_5.2023.10.16.0_** Updated winget to see if that fixes recent winget issues.

**Version 5.2023.10.12.1 / 5.2023.10.12.0**

- **_5.2023.10.12.1_** Also added backup for VLC Media Player.
- **_5.2023.10.12.0_** Added backup installers of Google Chrome, Mozilla Firefox & LibreOffice due to issues with winget.

**Version 5.2023.10.09.0**

- Update winget ID as it was changed in the latest update.

**Version 5.2023.10.03.1 / 5.2023.10.03.0**

- **_5.2023.10.03.1_** Stopped the installer being orange for the whole of October.
- **_5.2023.10.03.0_** Increased Halloween to a week before Halloween.
- **_5.2023.10.03.0_** Added more Christmas songs.

**Version 5.2023.09.18.2 / 5.2023.09.18.1 / 5.2023.09.18.0**

- **_5.2023.09.18.2_** Fixed missing icons.
- **_5.2023.09.18.1_** Updated Discord icon.
- **_5.2023.09.18.1_** Reorganised assets folder.
- **_5.2023.09.18.0_** Added version to bottom of the main window.
- **_5.2023.09.18.0_** Added view changelog button at the bottom of the main window.

**Version 5.2023.09.11.2 / 5.2023.09.11.1 / 5.2023.09.11.0**

- **_5.2023.09.11.2_** Fixed Discord icon.
- **_5.2023.09.11.2_** Changed VLC to only install on Windows 10.
- **_5.2023.09.11.1_** Added some missing progress bar additions.
- **_5.2023.09.11.0_** Kaspersky will no longer be installed in Romsey or Highcliffe due to no longer having the option for a trial.
- **_5.2023.09.11.0_** Added Discord.
- **_5.2023.09.11.0_** Added Steam.

**Version 5.2023.07.21.2 / 5.2023.07.21.1 / 5.2023.07.21.0**

- **_5.2023.07.21.2_** Forgot to add --install switch so AnyDesk just opened.
- **_5.2023.07.21.1_** Moved '
- **_5.2023.07.21.0_** Changed to AnyDesk EXE instead of MSI.

**Version 5.2023.07.20.2 / 5.2023.07.20.1 / 5.2023.07.20.0**

- **_5.2023.07.20.2_** Changed AnyDesk MSI location to the AnyDesk site so it's always up to date.
- **_5.2023.07.20.1_** Changed AnyDesk installer to an MSI as the winget installer is frequently broken.
- **_5.2023.07.20.1_** Removed TeamViewer check from AnyDesk install as it's no longer relevant.
- **_5.2023.07.20.0_** Added check for Microsoft Office 2007 and added loop breaks for both Office and Kaspersky after 5 minutes.

**Version 5.2023.07.18.1 / 5.2023.07.18.0**

- **_5.2023.07.18.1_** Added waits after every file extraction and added 5 minute wait to Office 2007 install.
- **_5.2023.07.18.0_** Fixed typo in NanaZip path and added Geeth's birthday.

**Version 5.2023.07.17.1 / 5.2023.07.17.0**

- **_5.2023.07.17.1_** If Windows 7 games are installed then icons will be put on the Desktop for the games.
- **_5.2023.07.17.0_** Replaced 7-zip with NanaZip.

**Version 5.2023.04.29.0**

- If AnyDesk is selected then TeamViewer will also be removed so this can run on already installed machines to switch to AnyDesk.

**Version 5.2023.04.21.0**

- Added AnyDesk and disabled TeamViewer from being selected by default.

**Version 5.2023.03.10.0**

- The installer will now update the Windows Store for Windows 11 as well as 10 because Adam is forgetful.

**Version 5.2023.02.16.0**

- Changed restart box icon as I don't think anyone knew what it was for.
- Changed this years Christmas song.

**Version 5.2023.01.31.0**

- Added Kaspersky Standard to installer as a proper install.

**Version 5.2023.01.30.3 / 5.2023.01.30.2 / 5.2023.01.30.1 / 5.2023.01.30.0**

- **_5.2023.01.30.3_** Removed fix attempt 1 files.
- **_5.2023.01.30.2_** That fixe worked so tied up check boxes and removed check box for sleep mode as who cares about carbon emissions.
- **_5.2023.01.30.1_** That fix didn't work, fix attempt number 2.
- **_5.2023.01.30.0_** Attemped to fix AC power sleep.

**Version 5.2023.01.24.4 / 5.2023.01.24.3 / 5.2023.01.24.2 / 5.2023.01.24.1 / 5.2023.01.24.0**

- **_5.2023.01.24.4_** Attempted to fix TeamViewer not installing.
- **_5.2023.01.24.3_** Amended force command.
- **_5.2023.01.24.2_** Correct deleteFiles.ps1
- **_5.2023.01.24.1_** If run on Windows 10 it will now update the Windows Store before installing Winget.
- **_5.2023.01.24.0_** Added force command if a program fails to install on the retry.

**Version 5.2023.01.23.9 / 5.2023.01.23.8 / 5.2023.01.23.7 / 5.2023.01.23.6 / 5.2023.01.23.5 / 5.2023.01.23.4 / 5.2023.01.23.3 / 5.2023.01.23.2 / 5.2023.01.23.1 / 5.2023.01.23.0**

- **_5.2023.01.23.9_** Fixed typo in kaspersky download URL. It's too cold to type tonight.
- **_5.2023.01.23.8_** Forgot to add Kaspersky move command.
- **_5.2023.01.23.7_** Updated deleteFiles.ps1.
- **_5.2023.01.23.7_** Re-enabled Kaspersky.
- **_5.2023.01.23.7_** Added Kaspersky Standard exe temporarily until I figure out how to enable a silent install. This must be run manually after the install is complete.
- **_5.2023.01.23.6_** Corrected typo stopping winget package from downloading.
- **_5.2023.01.23.5_** Fixed issue with Microsoft .NET Windows Desktop Runtime 3.1.
- **_5.2023.01.23.4_** If run on Windows 10 it will install winget and the prerequisites.
- **_5.2023.01.23.4_** Added Microsoft .NET Windows Desktop Runtime 3.1.
- **_5.2023.01.23.4_** Fixed hanging issue.
- **_5.2023.01.23.3_** Removed Microsoft .NET Windows Desktop Runtime 3.1.
- **_5.2023.01.23.3_** Cleaned up checkboxes.
- **_5.2023.01.23.2_** Changed the way winget installs.
- **_5.2023.01.23.1_** Added winget installation for Windows 10.
- **_5.2023.01.23.0_** Moved from chocolatey from to winget.
- **_5.2023.01.23.0_** Removed Microsoft Office 2019 and 2021.
- **_5.2023.01.23.0_** Removed HashTab.
- **_5.2023.01.23.0_** Removed uBlock Origin.
- **_5.2023.01.23.0_** Disabled Kaspersky for now until I can work out a silent install.

</details>

<details markdown="1">
<summary><strong>Version 4.x - The Dark Update</strong></summary>

**Version 4.2022.12.19.0**

- **_4.2022.12.19.0_** Updated copyright.
- **_4.2022.12.19.0_** Made light mode default in Chandlers Ford as Adam is old.

**Version 4.2022.12.02.4 / 4.2022.12.02.3 / 4.2022.12.02.2 / 4.2022.12.02.1 / 4.2022.12.02.0**

- **_4.2022.12.02.4_** Added sleep after Christmas message.
- **_4.2022.12.02.3_** Removed Callum :(
- **_4.2022.12.02.2_** Remove misplaced number causing crashes.
- **_4.2022.12.02.1_** Corrected date.
- **_4.2022.12.02.0_** Fixed Christmas message.

**Version 4.2022.10.31.3 / 4.2022.10.31.2 / 4.2022.10.31.1 / 4.2022.10.31.0**

- **_4.2022.10.31.3_** Fixed Halloween message not showing up.
- **_4.2022.10.31.2_** Added Christmas colours and message for December.
- **_4.2022.10.31.1_** Added Halloween colours.
- **_4.2022.10.31.0_** No longer sets "This PC" as default as the new Windows 11 home mode does the same thing.

**Version 4.2022.10.17.1 / 4.2022.10.17.0**

- **_4.2022.10.17.1_** Fixed missing ".
- **_4.2022.10.17.0_** Reverted Office 2021 back to one file as issue wasn't with installer it was with download site cert.

**Version 4.2022.10.15.2 / 4.2022.10.15.1 / 4.2022.10.15.0**

- **_4.2022.10.15.2_** Fixed Office path typo.
- **_4.2022.10.15.1_** Fixed Office 2021 download error.
- **_4.2022.10.15.1_** Added progress steps for each part of Office 2021.
- **_4.2022.10.15.0_** Split Office 2021 into 3 zips as it's so big.
- **_4.2022.10.15.0_** Added Office 2021 folder to the cleanup script.

**Version 4.2022.10.11.0**

- Updated domains for IP check.

**Version 4.2022.10.05.0**

- Stopped Office 2019 from installing on Windows 11.
- Added Office 2021.

**Version 4.2022.09.24.0**

- Added Highcliffe phone number.

**Version 4.2022.09.17.0**

- Attempted to fix monitor and standby timeouts not changing.

**Version 4.2022.09.14.0**

- Added known Highcliffe details, still awaiting phone number.

**Version 4.2022.09.10.4 / 4.2022.09.10.3 / 4.2022.09.10.2 / 4.2022.09.10.1 / 4.2022.09.10.0**

- **_4.2022.09.10.4_** Installer will now wait for the HP install.cmd to finish before continuing.
- **_4.2022.09.10.3_** Moved } that was in the wrong place stopping the HP software from installing.
- **_4.2022.09.10.2_** Changed the order in which sleep will change timeout modes to make sure they're set correctly.
- **_4.2022.09.10.1_** Fixed two conflicting arguments.
- **_4.2022.09.10.0_** Fixed not setting HP EliteBook status correctly.

**Version 4.2022.09.09.0**

- Added HP Hotkey Support for HP EliteBooks as Steve can't install it.

**Version 4.2022.09.07.1 / 4.2022.09.07.0**

- **_4.2022.09.07.1_** Installer will now sing happy birthday.
- **_4.2022.09.07.0_** Improved way of getting the IP.
- **_4.2022.09.07.0_** Added Highcliffe.
- **_4.2022.09.07.0_** Added Callum's birthday.

**Version 4.2022.08.04.0**

- Moved Office 2007 & Kaspersky files to BRM/FFITR domain for faster download speeds.

**Version 4.2022.07.21.2 / 4.2022.07.21.1 / 4.2022.07.21.0**

- **_4.2022.07.21.2_** Fixed typo.
- **_4.2022.07.21.1_** Will now uninstall Kaspersky VPN & Secure Connection after checking if install has complete to make sure it removes just in case the install fails for any reason.
- **_4.2022.07.21.0_** Added "Reset chocolatey" button to remove previous installations of chocolatey if needed.

**Version 4.2022.07.18.2 / 4.2022.07.18.1 / 4.2022.07.18.0**

- **_4.2022.07.18.2_** Only downloads Windows 7 Games if it is selected to speed up loading the program.
- **_4.2022.07.18.1_** Fixed Windows 7 Games check box from overlapping with Zoom.
- **_4.2022.07.18.0_** Added Windows 7 Games as an install option.

**Version 4.2022.07.08.2 / 4.2022.07.08.1 / 4.2022.07.08.0**

- **_4.2022.07.08.2_** Fixed iTunes icon.
- **_4.2022.07.08.1_** Added birthday messages.
- **_4.2022.07.08.1_** Changed all checkboxes to images rather than text.
- **_4.2022.07.08.0_** Fixed typo causing buttons to be blank.

**Version 4.2022.07.07.1 / 4.2022.07.07.0**

- **_4.2022.07.07.1_** Added dark mode.
- **_4.2022.07.07.1_** Modernised the GUI slightly.
- **_4.2022.07.07.1_** Added check boxes for all branches that can be checked and unchecked if ever needed.
- **_4.2022.07.07.1_** Added Highcliffe location but disabled until branch is opened.
- **_4.2022.07.07.0_** Updated EXE to run first time every time.

</details>

<details markdown="1">
<summary><strong>Version 3.x - The NorthPoint Update</strong></summary>

**Version 3.2022.07.02.5 / 3.2022.07.02.4 / 3.2022.07.02.3 / 3.2022.07.02.2 / 3.2022.07.02.1 / 3.2022.07.02.0**

- **_3.2022.07.02.5_** Corrected progress bar.
- **_3.2022.07.02.4_** Will now close Office 2019 installer once it has completed the install.
- **_3.2022.07.02.3_** Added last updated line when installer is run.
- **_3.2022.07.02.2_** Stopped the installer from deleting choco on every run.
- **_3.2022.07.02.2_** Will now remove CRC Installer x64.exe from Desktop on reboot.
- **_3.2022.07.02.1_** Fixed Word path error.
- **_3.2022.07.02.0_** Fixed issue with installer not checking for already installed programs & fixed Office 2019 activation issue.

**Version 3.2022.07.01.0**

- The installer will now check if a program is already installed before running the install command to speed up the installs on machines it has been run on previously.
- Cleaned up Office 2019 install.
- Added Desktop icons for Office 2007 and 2019 installs.
- Attemped to fix progress bar but it might need some further tweaks to get the progress point correct.

**Version 3.2022.05.22.0**

- Updated IP checker to check for Romsey IP instead of Chandler's Ford as the IP doesn't have to be update periodically.

**Version 3.2022.05.19.1 / 3.2022.05.19.0**

- **_3.2022.05.19.1_** Fixed darkmode overriding wallpaper selection.
- **_3.2022.05.19.0_** Enabled dark mode by default.

**Version 3.2022.05.07.0**

- **_3.2022.05.07.0_** Updated Kaspersky.
- **_3.2022.05.07.0_** Updated download link for Kaspersky.
- **_3.2022.05.07.0_** Updated the readme to include new features I previously forgot to add.
- **_3.2022.05.07.0_** Corrected some typos.
- **_3.2022.05.07.0_** Removed taskbar pin as this currently doesn't work on Windows 11.
- **_3.2022.05.07.0_** uBlock Origin is now disabled by default due to some customer complaints about removing it.

**Version 3.2021.12.13.1 / 3.2021.12.13.0**

- **_3.2021.12.13.1_** Fixed progress bar.
- **_3.2021.12.13.0_** Will now remove old installations of Chocolatey to prevent issues with programs not installing correctly if there is a crash or other issues.

**Version 3.2021.10.26.0**

- Added HashTab to prerequisites for convenience.

**Version 3.2021.10.25.0**

- Changed version format to keep track of when it was updated easier.
- Added 4K support to Bing Wallpapers.

**Version 3.10.12.9 / 3.10.12.8 / 3.10.12.7 / 3.10.12.6 / 3.10.12.5 / 3.10.12.4 / 3.10.12.3 / 3.10.12.2 / 3.10.12.1 / 3.10.12.0**

- **_3.10.12.9_** Fixed typo causing 2 Bing wallpaper tasks.
- **_3.10.12.8_** Changed Bing wallpaper to run at 1PM everyday and at every logon.
- **_3.10.12.8_** Corrected progress bar on installer.
- **_3.10.12.7_** Changed all unzipping commands to overrite to avoid any future problems.
- **_3.10.12.6_** Stopped installer from hanging on extracting zip files. I really hope this is the last one because this is boring now.
- **_3.10.12.5_** Changed how Bing wallpapers downloads files.
- **_3.10.12.4_** Fixed spelling error.
- **_3.10.12.3_** Fixed zipped files not extracting in time.
- **_3.10.12.2_** Fixed Bing wallpapers not downloading.
- **_3.10.12.1_** Bing wallpapers now saves the files it's own folder to keep things tidy.
- **_3.10.12.0_** Made some changes to Bing Wallpaper so it now saves the file with the date in the name so the user can keep wallpapers they like.
- **_3.10.12.0_** Zipped up the Bing Wallpaper files to stop files from failing from downloading.

**Version 3.10.11.2 / 3.10.11.1 / 3.10.11.0**

- **_3.10.11.2_** Updated Choco.
- **_3.10.11.1_** Fixed issue with Teams being installed with TeamViewer.
- **_3.10.11.0_** Added MalwareBytes as install option.
- **_3.10.11.0_** Fixed Teams icon.

**Version 3.10.10.0**

- Fixed Kaspersky mailing list issue.
- Installer will now check software MD5 checksums before installation.
- Added initial support for Windows 11.
- Installer now installs Microsoft Visual C++ Redistributable as part of the prerequisites.
- Added Teams as an install option.
- Removed some Windows 10 tweaks to make it run nicer for the end user.
- Added Windows 11 tweaks to match Windows 10. More to come later on release.

**Version 3.10.9.0**

- Updated Kaspersky Internet Security.

**Version 3.10.8.2 / 3.10.8.1 / 3.10.8.0**

- **_3.10.8.2_** Fixed text for reboot message going off the screen.
- **_3.10.8.1_** Added a message to indicate that the machine is recognised as a refurb unit.
- **_3.10.8.0_** The refurb and reboot box will now be ticked if the installer is run on a HP EliteBook as these are common refurb units.

**Version 3.10.7.1 / 3.10.7.0**

- **_3.10.7.1_** Updated Romsey hours.
- **_3.10.7.0_** The installer now disables the weather taskbar widget.

**Version 3.10.6.0**

- Bing Wallpapers task will now run at 1AM incase user leaves the device on and will run at earliest opportunity if not.

**Version 3.10.5.0**

- Installer will now delete leftover files on next startup.

**Version 3.10.4.1 / 3.10.4.0**

- **_3.10.4.1_** Fixed typo stopping Bing Wallpapers from working.
- **_3.10.4.0_** Reverted Bing Wallapers to save into the Picture folder.
- **_3.10.4.0_** Fixed issue with user selected wallpapers.

**Version 3.10.3.0**

- Bing Wallpapers now saves the C Drive instead of the Pictures folder to allow slideslow mode.
- Bing Wallpapers will no longer override user selected wallpapers.

**Version 3.10.2.0**

- Installer will now remove Kaspersky VPN after installing Kaspersky Internet Security.

**Version 3.10.1.4 / 3.10.1.3 / 3.10.1.2 / 3.10.1.1 / 3.10.1.0**

- **_3.10.1.4_** Stopped a Powershell window from appearing during the Bing wallpaper task.
- **_3.10.1.3_** Fixed Zoom interfering with Bing wallpapers.
- **_3.10.1.2_** Fixed Kaspersky Internet Security icon.
- **_3.10.1.1_** Fixed Kaspersky Internet Security URL issue.
- **_3.10.1.0_** Updated Kaspersky Internet Security 2021 to 21.3.10.391.

**Version 3.10.0.1 / 3.10.0.0**

- **_3.10.0.1_** Stopped Zoom from being checked by default.
- **_3.10.0.0_** Added Zoom to installer options.
- **_3.10.0.0_** If the user selects Kaspersky Internet Security they are now notified that the system requires a reboot.
- **_3.10.0.0_** Updated Kaspersky Internet Security to 2021.
- **_3.10.0.0_** Licensed under Mozilla Public License 2.0.

**Version 3.9.0.2 / 3.9.0.1 / 3.9.0.0**

- **_3.9.0.2_** Fixed Bing Wallpaper resetting task every time it runs.
- **_3.9.0.1_** Fixed issue with Bing wallpaper task not knowing what app to use.
- **_3.9.0.0_** Updated Chandler's Ford IP address.
- **_3.9.0.0_** Removed custom wallpaper and theme installation.
- **_3.9.0.0_** Wallpaper option has been replaced with the option to install Bing wallpaper that will grab a new wallpaper everyday.
- **_3.9.0.0_** Removed wallpaper support on Windows 7.

**Version 3.8.1.1 / 3.8.1.0**

- **_3.8.1.1_** Removed Visual C++ Runtimes temporarily.
- **_3.8.1.0_** Added a box to disable sleep mode on AC power.
- **_3.8.1.0_** Installer will now instal various Visual C++ Runtimes as part of the prerequisites.

**Version 3.8.0.0**

- Added a reboot box that if checked will reboot the computer once the installer has finished, with a 30 second delay so the user can cancel if required.
- Added a countdown timer to the reboot button if a reboot is pending to show user how much time they have until the compuer is rebooted.

**Version 3.7.2.1 / 3.7.2.0**

- **_3.7.2.1_** Removed quotation marks causing crashes from previous update.
- **_3.7.2.0_** Installer will now notify you if the system needs a reboot.

**Version 3.7.1.3 / 3.7.1.2 / 3.7.1.1 / 3.7.1.0**

- **_3.7.1.3_** Fixed typo causing Microsoft Office 2007 to not install.
- **_3.7.1.2_** Changed how Microsoft Office activates to hopefully prevent Windows Defender disabling it.
- **_3.7.1.1_** Fixed Microsoft Office 2019 activation bug.
- **_3.7.1.0_** Microsoft Office 2019 should now automatically activate.

**Version 3.7.0.2 / 3.7.0.1 / 3.7.0.0**

- **_3.7.0.2_** Added Microsoft Office 2007 icon.
- **_3.7.0.1_** Microsoft Office 2007 will be auto selected in Chandler's Ford.
- **_3.7.0.0_** Added Microsoft Office 2007 which will automatically activate.

**Version 3.6.2.0**

- Microsoft Office 2019 should now automatically activate.

**Version 3.6.1.0**

- Updated multiple icons.

**Version 3.6.0.2 / 3.6.0.1 / 3.6.0.0**

- **_3.6.0.2_** Fixed Microsoft Office icon.
- **_3.6.0.1_** Fixed crashing issue.
- **_3.6.0.0_** Updated for 2021, added option to install Microsoft Office 2019 Volume License and changed Chandler's Ford IP.

**Version 3.5.5.0**

- Installer now enables the Action Centre and toast notifications.

**Version 3.5.4.2 / 3.5.4.1 / 3.5.4.0**

- **_3.5.4.2_** Google Chrome is now pinned again.
- **_3.5.4.1_** Fixed link location for Kaspersky.
- **_3.5.4.0_** Updated Kaspersky.

**Version 3.5.3.2 / 3.5.3.1 / 3.5.3.0**

- **_3.5.3.2_** Installer now leaves Cortana search bar in the taskbar. Again. Because of old people.
- **_3.5.3.1_** Fixed issue with Kaspersky not downloading.
- **_3.5.3.0_** Installer now leaves Cortana search bar in the taskbar.

**Version 3.5.2.0**

- Added more wallpapers so installer with now randomly pick between two different wallpapers sets. Can easily add more in the future.

**Version 3.5.1.0**

- Added Chocolatey to the prerequisites and stopped disabling monitor timeout on Windows 10 as it wasn't working.

**Version 3.5.0.4 / 3.5.0.3 / 3.5.0.2 / 3.5.0.1 / 3.5.0.0**

- **_3.5.0.4_** Fixed issue with default broswer sometimes not settings correctly.
- **_3.5.0.3_** Updated download URLs from legacy to current.
- **_3.5.0.2_** Installer now installs Microsoft .NET 3.5 and .NET 4.6.2 as a prerequisite.
- **_3.5.0.1_** When installing prerequisites the installer will now show what is being installed.
- **_3.5.0.0_** Removed most of the support for Windows 7, no future features will come to 7 but programs will continue to install and wallpapers will continue to be set.
- **_3.5.0.0_** Removed official support for Windows 8 & 8.1 but basic programs will continue to install.
- **_3.5.0.0_** Default browser will change to Google Chrome if installed, Mozilla Firefox if installed or Mozilla Firefox is both Chrome and Firefox are installed.

**Version 3.4.1.1 / 3.4.1.0**

- **_3.4.1.1_** Fixed bug causing installer to hang.
- **_3.4.1.0_** Re-enabled taskbar pinning for Windows 10.

**Version 3.4.0.1 / 3.4.0.0**

- **_3.4.0.1_** Fixed missing token.
- **_3.4.0.0_** Installer can now enable the set theme in light and dark mode depending on the dark mode selection.

**Version 3.3.5.3 / 3.3.5.2 / 3.3.5.1 / 3.3.5.0**

- **_3.3.5.3_** Updated Chandler's Ford IP.
- **_3.3.5.2_** Fixed another issue with light mode. Take the hint old people.
- **_3.3.5.1_** Fixed issue with dark mode being enabled even with box not ticked. Because old people.
- **_3.3.5.1_** Fixed issue with installer only working on second launch, it should now work on first launch.
- **_3.3.5.0_** Disabled Windows dark mode by default because old people and updated Chandler's Ford IP.

**Version 3.3.4.0**

- Updated Firefox logo.

**Version 3.3.3.1 / 3.3.3.0**

- **_3.3.3.1_** Added in last update date to information box.
- **_3.3.3.0_** Updated Kaspersky Internet Security to 2020.

**Version 3.3.2.0**

- Fixed issue with LibreOffice not installing correctly.

**Version 3.3.1.2 / 3.3.1.1 / 3.3.1.0**

- **_3.3.1.2_** Fixed checksum issues.
- **_3.3.1.1_** Removed birthday messages.
- **_3.3.1.0_** Enabled VLC by default.

**Version 3.3.0.0**

- Fixed Google Chrome and Mozilla Firefox uBlock Origin installs with the new version of Windows 1903.
- Temporarily disabled taskbar pining until a new solution is found for Windows 1903.
- Moved night mode to its own check box so it can be disabled. Fixed theme for Windows 1903.

**Version 3.2.2.2 / 3.2.2.1 / 3.2.2.0**

- **_3.2.2.2_** Removed old installer leftover files and cleaned up sleep functions.
- **_3.2.2.1_** Removed left over code.
- **_3.2.2.0_** Birthday feature now says the name of whose birthday it is.
- **_3.2.2.0_** Added close button.

**Version 3.2.1.0**

- Added birthday easter egg.

**Version 3.2.0.2 / 3.2.0.1 / 3.2.0.0**

- **_3.2.0.2_** Fixed wallpapers not downloading.
- **_3.2.0.1_** Fixed Computer Repair Centre icon not downloading.
- **_3.2.0.0_** Rewritten the executable in C++ so Windows Defender and other anti-virus software won't delete it. Added in loading form while the files download.

**Version 3.1.0.0**

- The installer is now multithreaded so the GUI uses one thread and the script uses another. This speeds it up and also stops the GUI from freezing while the script is in progress. Also added am adaptive progress bar to show much progress is left.

**Version 3.0.9.11 / 3.0.9.10 / 3.0.9.9**

- **_3.0.9.11_** Fixed progress box not auto-scrolling.
- **_3.0.9.10_** Fixed crashing issue.
- **_3.0.9.9_** Added features from 3.0.9.8.

**Revert to 3.0.9.7**

- Reverted due to mass rename of "Checked".

**Version 3.0.9.8 / 3.0.9.7 / 3.0.9.6 / 3.0.9.5 / 3.0.9.4 / 3.0.9.3 / 3.0.9.2 / 3.0.9.1 / 3.0.9.0**

- **_3.0.9.8_** Fixed some typos and added in some features for Windows 8.x.
- **_3.0.9.7_** Reverted to 3.0.8.0 pinning.
- **_3.0.9.6_** Changed taskbar pinning to a VBS script.
- **_3.0.9.5_** Reverted to old way of pinning taskbar icons and re-renabled Cortana search bar for Chandler's Ford.
- **_3.0.9.4_** Updated OEM logo.
- **_3.0.9.3_** Fixed dark mode.
- **_3.0.9.2_** Removed most of the build in Windows 10 tracking features.
- **_3.0.9.1_** Fixed crashing issue.
- **_3.0.9.0_** Added XML file to replace taskbar pinning on Windows 10.

**Version 3.0.8.5 / 3.0.8.4 / 3.0.8.3 / 3.0.8.2 / 3.0.8.1 / 3.0.8.0**

- **_3.0.8.5_** Removed auto-arranging Desktop icons due to locking issue.
- **_3.0.8.4_** Fixed crashing issue.
- **_3.0.8.3_** Installer cleans up files before downloading new files.
- **_3.0.8.2_** Added auto-arranging Desktop, now removed Kaspersky Safe Money icon from the Desktop and updated taskbar pinning for Windows 8 and 8.1.
- **_3.0.8.1_** Fixed formatting issue and changed icon.
- **_3.0.8.0_** Added dark mode for Windows 10, added more wallpapers, added option to disable taskbar repin and fixed pinning icons on Windows 7.

**Version 3.0.7.4 / 3.0.7.3 / 3.0.7.2 / 3.0.7.1 / 3.0.7.0**

- **_3.0.7.4_** Replaced taskbar pin with better PowerShell script.
- **_3.0.7.3_** Fixed paths.
- **_3.0.7.2_** Fixed error with exe.
- **_3.0.7.1_** Fixed crashing error.
- **_3.0.7.0_** Fixed wallpaper icon not downloading and updated host address.

**Version 3.0.6.3 / 3.0.6.2 / 3.0.6.1 / 3.0.6.0**

- **_3.0.6.3_** Improved tashbar pinning.
- **_3.0.6.2_** Fixed system pin and added Josh's birthday.
- **_3.0.6.1_** Updated Kaspersky.
- **_3.0.6.0_** Updated UI and moved from Kaspersky 2018 to 2019.

**Version 3.0.5.4 / 3.0.5.3 / 3.0.5.2 / 3.0.5.1 / 3.0.5.0**

- **_3.0.5.4_** Adding auto-arranging Desktop icons.
- **_3.0.5.3_** Fixed issue with pin to taskbar not working.
- **_3.0.5.2_** Updated URL in executable.
- **_3.0.5.1_** Fixed URL.
- **_3.0.5.0_** Moved to self hosted GitLab to avoid download issues.

**Version 3.0.4.2 / 3.0.4.1 / 3.0.4.0**

- **_3.0.4.2_** Improved the way uBlock Origin is installed on Firefox.
- **_3.0.4.1_** Fixed problem with uBlock Origin icon.
- **_3.0.4.0_** Updated UI and made interface smaller.
- **_3.0.4.0_** Added option for uBlock Origin to be installed on Mozilla Firefox and Google Chrome.

**Version 3.0.3.0**

- Added Skype as install option.

**Version 3.0.2.2 / 3.0.2.1 / 3.0.2.0**

- **_3.0.2.2_** Fixed issue with Kaspersky Internet Security 2018.
- **_3.0.2.1_** Removed progress bar due to invisible issues and added console that minimises on open.
- **_3.0.2.0_** Added loading bar during file downloads and reverted to Kaspersky Internet Security 2018 due to Windows 10 issues.

**Version 3.0.1.1 / 3.0.1.0**

- **_3.0.1.1_** Removes Safe Money icon from Desktop.
- **_3.0.1.0_** Improved the cleanup process after installation and fixing locking up issue.

**Version 3.0.0.1 / 3.0.0.0**

- **_3.0.0.1_** Removed testing bug and changed downloading so it now only downloads files if necessary.
- **_3.0.0.0_** Renamed to NorthPoint Installer and moved to GitLab. Modernised the GUI and improved performace.

</details>

<details markdown="1">
<summary><strong>Version 2.x - The Windows Defender Fix</strong></summary>

**Version 2.6.0**

- Now unistalls Kaspersky Secure Connection after installing Kaspersky Internet Security 2019.

**Version 2.5.2 / 2.5.1 / 2.5.0**

- **_2.5.2_** Fixed IP issue with Chandlers Ford.
- **_2.5.1_** LibreOffice will be checked if run from Romsey and unchecked if run from Chandlers Ford.
- **_2.5.0_** Added Mozilla Thunderbird and iTunes. Set LibreOffice to be ticked by default.

**Version 2.4.2 / 2.4.1 / 2.4.0**

- **_2.4.2_** Updated Kaspersky Internet Security to 2019.
- **_2.4.1_** Will now auto-arranges Desktop icons after the installer has finished.
- **_2.4.0_** Deletes "Microsoft Edge" icon from the Desktop in the new April 2018 update of Windows 10.

**Version 2.3.1 / 2.3.0**

- **_2.3.1_** Now disables standby and monitor timeout when plugged in.
- **_2.3.0_** Added "close.ps1" to remove all unnecessary files after installation is complete.

**Version 2.2.4 / 2.2.3 / 2.2.2 / 2.2.1 / 2.2.0**

- **_2.2.4_** Fixed issue with wallpapers hanging if folder already exists.
- **_2.2.3_** Cleaned up spacing in code.
- **_2.2.2_** Fixed birthday Easter egg.
- **_2.2.1_** Removed orphan code.
- **_2.2.0_** Cleaned up code, changed requisites and added more wallpapers.

**Version 2.1.2 / 2.1.1 / 2.1.0**

- **_2.1.2_** Added random wallpaper to checkboxes so you now have choice.
- **_2.1.1_** Added "close.ps1" script that forces a restart of the computer.
- **_2.1.0_** Added feature that sets random wallpaper per machine.

**Version 2.0.3 / 2.0.2 / 2.0.1 / 2.0.0**

- **_2.0.3_** Fixed problem with execution policy not changing.
- **_2.0.2_** Executable now sets execution policy and fixed issue with Kaspersky Internet Kaspersky.
- **_2.0.1_** Added Kaspersky Internet Security 2018 & changed spacing for icons.
- **_2.0.0_** Rewritten executable to work with Windows Defender and download quicker. Removed log file, Apache OpenOffice & WPSOffice.

</details>

<details markdown="1">
<summary><strong>Version 1.x - The Original Release (BRM / CRC Installer)</strong></summary>

**Version 1.12.1 / 1.12.0**

- **_1.12.1_** Fixed crashing issue.
- **_1.12.0_** Added a lot more Windows 10 Tweaks.

**Version 1.11.4 / 1.11.3 / 1.11.2 / 1.11.1 / 1.11.0**

- **_1.11.4_** No longer installs LibreOffice by defualt and added the new Mozilla Firefox Quantum.
- **_1.11.3_** Removed the moving of Windows.Old folders due to permissions issue.
- **_1.11.2_** Added sleep after moving previous "Users" folder.
- **_1.11.1_** Fixed previous "Users" folder not being renamed.
- **_1.11.0_** Installer will check if the programs have installed successfully and notify you of any failures.

**Version 1.10.1 / 1.10.0**

- **_1.10.1_** Now checks for up to 5 previous Windows installations instead of 1.
- **_1.10.0_** Checks for previous Windows installation and then moves old documents to the desktop if it finds any.

**Version 1.9.1 / 1.9.0**

- **_1.9.1_** Installer now tells you local info in text box.
- **_1.9.0_** Added Apache OpenOffice and WPS Office as install options.

**Version 1.8.7 / 1.8.6 / 1.8.5 / 1.8.4 / 1.8.3 / 1.8.2 / 1.8.1 / 1.8.0**

- **_1.8.7_** Fixed an issue where it should be checking IP instead of SSID.
- **_1.8.6_** Replaced SSID check with public IP check so it now works on towers as well as laptops and rearranged installation process.
- **_1.8.5_** Moved location check to run immediately after "Install" is pressed.
- **_1.8.4_** Added form that lets you select your location if it can't find it.
- **_1.8.3_** Added feature to find IP and then install the correct OEM information if Wi-Fi is nto available.
- **_1.8.2_** Fixed crashing issue with Wi-Fi searching.
- **_1.8.1_** Improved taskbar pinning on Windows 7, 8, and 8.1. Reintroduced taskbar pinning for Windows 10.
- **_1.8.0_** Added feature that auto detects current Wi-Fi network, eliminating the need for multiple installers.

**Version 1.7.5 / 1.7.4 / 1.7.3 / 1.7.2 / 1.7.1 / 1.7.0**

- **_1.7.5_** Removed commands that disable some telememtary and Cortana.
- **_1.7.4_** Fixed incorrect wording when installing Mozilla Firefox.
- **_1.7.3_** Fixed command prompt not going invisible on Romsey installer and changed wording for installation.
- **_1.7.2_** Changed directory for icon file.
- **_1.7.1_** Updated exe to include icon and loading animation.
- **_1.7.0_** Added loading form so you know the program is loading.

**Version 1.6.0**

- Made command line invisible for sleaker look.

**Version 1.5.6 / 1.5.5 / 1.5.4 / 1.5.3 / 1.5.2 / 1.5.1 / 1.5.0**

- **_1.5.6_** Fixed crashing issue on Windows 7.
- **_1.5.5_** Fixed problem with Kaspersky and TeamViewer not installing.
- **_1.5.4_** Fixed crashing problem.
- **_1.5.3_** Fixed issue with Documents folder.
- **_1.5.2_** Fixed file cleanup on completion.
- **_1.5.1_** Removed extra lines for downloading files.
- **_1.5.0_** Temporarily removed automatically setting taskbar icons in Windows 10 due to issue and added KIS Chocolatey package.

**Version 1.4.1 / 1.4.0**

- **_1.4.1_** Fixed OEM website HTTPS information.
- **_1.4.0_** Added autoscrolling feature to list box and reduced size of install window.

**Version 1.3.0**

- Renamed to CRC Installer and added new Romsey version.

**Version 1.2.1 / 1.2.0**

- **_1.2.1_** Fixed issue with Google Chrome checksums.
- **_1.2.0_** Replaced text with icon of program for cleaner look.

**Version 1.1.3 / 1.1.2 / 1.1.1 / 1.1.0**

- **_1.1.3_** Fixed crashing issue with icon file.
- **_1.1.2_** Removed exit button and will now close 15 seconds after the install has finished.
- **_1.1.1_** Fixed issue with downloading CleanCF.ps1.
- **_1.1.0_** Programs now install in alphabetical order and added an exit button than cleans up temporary files.

</details>

