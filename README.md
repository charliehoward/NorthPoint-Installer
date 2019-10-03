# NorthPoint Installer 3.3.3.1
###### Copyright (c) Charlie Howard 2016-2019 All rights reserved.

When run you will get a form that allows to select what programs you wish to install.

Can install the Computer Repair Centre OEM information, 7-zip, Google Chrome, iTunes, Kaspersky Internet Security 2020 (uninstalls Kaspersky Secure Connection), LibreOffice, Mozilla Firefox, Mozilla Thunderbird, Skype, TeamViewer, uBlock Origin & VLC Media Player.

If run on Windows 8 and 8.1 it also changes the default Explorer page to "This PC" and auto-arranges Desktop icons.

If run on Windows 10 it also disables Windows 10 hibernation mode, Wi-Fi sense, changes the default Explorer page to "This PC", and auto-arranges Desktop icons.

Changes wallpaper to a selection of HD landscape images.

### Changelog

###### Update 3.3.3.1

Added in last update date to information box.

###### Update 3.3.3.0

Updated Kaspersky Internet Security to 2020.

###### Update 3.3.2.0

Fixed issue with LibreOffice not installing correctly.

###### Update 3.3.1.2

Fixed checksum issues.

###### Update 3.3.1.1

Removed birthday messages.

###### Update 3.3.1.0

Enabled VLC by default.

###### Update 3.3.0.0

Fixed Google Chrome and Mozilla Firefox uBlock Origin installs with the new version of Windows 1903. Temporarily disabled taskbar pining until a new solution is found for Windows 1903. Moved night mode to its own check box so it can be disabled. Fixed theme for Windows 1903.

###### Update 3.2.2.2

Removed old installer leftover files and cleaned up sleep functions.

###### Update 3.2.2.1

Removed left over code.

###### Update 3.2.2.0

Birthday feature now says the name of whose birthday it is. Added close button.

###### Update 3.2.1.0

Added birthday easter egg.

###### Update 3.2.0.2

Fixed wallpapers not downloading.

###### Update 3.2.0.1

Fixed Computer Repair Centre icon not downloading.

###### Update 3.2.0.0

Rewritten the executable in C++ so Windows Defender and other anti-virus software won't delete it. Added in loading form while the files download.

###### Update 3.1.0.0

The installer is now multithreaded so the GUI uses one thread and the script uses another. This speeds it up and also stops the GUI from freezing while the script is in progress. Also added am adaptive progress bar to show much progress is left.

###### Update 3.0.9.11

Fixed progress box not auto-scrolling.

###### Update 3.0.9.10

Fixed crashing issue.

###### Update 3.0.9.9

Added features from 3.0.9.8.

###### Revert to 3.0.9.7

Reverted due to mass rename of "Checked".

###### Update 3.0.9.8

Fixed some typos and added in some features for Windows 8.x.

###### Update 3.0.9.7

Reverted to 3.0.8.0 pinning.

###### Update 3.0.9.6

Changed taskbar pinning to a VBS script.

###### Update 3.0.9.5

Reverted to old way of pinning taskbar icons and re-renabled Cortana search bar for Chandler's Ford.

###### Update 3.0.9.4

Updated OEM logo.

###### Update 3.0.9.3

Fixed dark mode.

###### Update 3.0.9.2

Removed most of the build in Windows 10 tracking features.

###### Update 3.0.9.1

Fixed crashing issue.

###### Update 3.0.9.0

Added XML file to replace taskbar pinning on Windows 10.

###### Update 3.0.8.5

Removed auto-arranging Desktop icons due to locking issue.

###### Update 3.0.8.4

Fixed crashing issue.

###### Update 3.0.8.3

Installer cleans up files before downloading new files.

###### Update 3.0.8.2

Added auto-arranging Desktop, now removed Kaspersky Safe Money icon from the Desktop and updated taskbar pinning for Windows 8 and 8.1.

###### Update 3.0.8.1

Fixed formatting issue and changed icon.

###### Update 3.0.8.0

Added dark mode for Windows 10, added more wallpapers, added option to disable taskbar repin and fixed pinning icons on Windows 7.

###### Update 3.0.7.4

Replaced taskbar pin with better PowerShell script.

###### Update 3.0.7.3

Fixed paths.

###### Update 3.0.7.2

Fixed error with exe.

###### Update 3.0.7.1

Fixed crashing error.

###### Update 3.0.7.0

Fixed wallpaper icon not downloading and updated host address.

###### Update 3.0.6.3

Improved tashbar pinning.

###### Update 3.0.6.2

Fixed system pin and added Josh's birthday.

###### Update 3.0.6.1

Updated Kaspersky.

###### Update 3.0.6.0

Updated UI and moved from Kaspersky 2018 to 2019.

###### Update 3.0.5.4

Adding auto-arranging Desktop icons.

###### Update 3.0.5.3

Fixed issue with pin to taskbar not working.

###### Update 3.0.5.2

Updated URL in executable.

###### Update 3.0.5.1

Fixed URL.

###### Update 3.0.5.0

Moved to self hosted GitLab to avoid download issues.


###### Update 3.0.4.2

Improved the way uBlock Origin is installed on Firefox.

###### Update 3.0.4.1

Fixed problem with uBlock Origin icon.

###### Update 3.0.4.0

Updated UI and made interface smaller.
Added option for uBlock Origin to be installed on Mozilla Firefox and Google Chrome.

###### Update 3.0.3.0

Added Skype as install option.

###### Update 3.0.2.2

Fixed issue with Kaspersky Internet Security 2018.

###### Update 3.0.2.1

Removed progress bar due to invisible issues and added console that minimises on open.

###### Update 3.0.2.0

Added loading bar during file downloads and reverted to Kaspersky Internet Security 2018 due to Windows 10 issues.

###### Update 3.0.1.1

Removes Safe Money icon from Desktop.

###### Update 3.0.1.0

Improved the cleanup process after installation and fixing locking up issue.

###### Update 3.0.0.1

Removed testing bug and changed downloading so it now only downloads files if necessary.

###### Update 3.0.0.0

Renamed to NorthPoint Installer and moved to GitLab. Modernised the GUI and improved performace.

###### Update 2.6.0

Now unistalls Kaspersky Secure Connection after installing Kaspersky Internet Security 2019.

###### Update 2.5.2

Fixed IP issue with Chandlers Ford.

###### Update 2.5.1

LibreOffice will be checked if run from Romsey and unchecked if run from Chandlers Ford.

###### Update 2.5.0

Added Mozilla Thunderbird and iTunes. Set LibreOffice to be ticked by default.

###### Update 2.4.2

Updated Kaspersky Internet Security to 2019.

###### Update 2.4.1

Will now auto-arranges Desktop icons after the installer has finished.

###### Update 2.4.0

Deletes "Microsoft Edge" icon from the Desktop in the new April 2018 update of Windows 10.

###### Update 2.3.1

Now disables standby and monitor timeout when plugged in.

###### Update 2.3.0

Added "close.ps1" to remove all unnecessary files after installation is complete.

###### Update 2.2.4

Fixed issue with wallpapers hanging if folder already exists.

###### Update 2.2.3

Cleaned up spacing in code.

###### Update 2.2.2

Fixed birthday Easter egg.

###### Update 2.2.1

Removed orphan code.

###### Update 2.2.0

Cleaned up code, changed requisites and added more wallpapers.

###### Update 2.1.2

Added random wallpaper to checkboxes so you now have choice.

###### Update 2.1.1

Added "close.ps1" script that forces a restart of the computer.

###### Update 2.1.0

Added feature that sets random wallpaper per machine.

###### Update 2.0.3

Fixed problem with execution policy not changing.

###### Update 2.0.2

Executable now sets execution policy and fixed issue with Kaspersky Internet Kaspersky.

###### Update 2.0.1

Added Kaspersky Internet Security 2018 & changed spacing for icons.

###### Update 2.0.0

Rewritten executable to work with Windows Defender and download quicker. Removed log file, Apache OpenOffice & WPSOffice.

###### Update 1.12.1

Fixed crashing issue.

###### Update 1.12.0

Added a lot more Windows 10 Tweaks.

###### Update 1.11.4

No longer installs LibreOffice by defualt and added the new Mozilla Firefox Quantum.

###### Update 1.11.3

Removed the moving of Windows.Old folders due to permissions issue.

###### Update 1.11.2

Added sleep after moving previous "Users" folder.

###### Update 1.11.1

Fixed previous "Users" folder not being renamed.

###### Update 1.11.0

Installer will check if the programs have installed successfully and notify you of any failures.

###### Update 1.10.1

Now checks for up to 5 previous Windows installations instead of 1.

###### Update 1.10.0

Checks for previous Windows installation and then moves old documents to the desktop if it finds any.

###### Update 1.9.1

Installer now tells you local info in text box.

###### Update 1.9.0

Added Apache OpenOffice and WPS Office as install options.

###### Update 1.8.7

Fixed an issue where it should be checking IP instead of SSID.

###### Update 1.8.6

Replaced SSID check with public IP check so it now works on towers as well as laptops and rearranged installation process.

###### Update 1.8.5

Moved location check to run immediately after "Install" is pressed.

###### Update 1.8.4

Added form that lets you select your location if it can't find it.

###### Update 1.8.3

Added feature to find IP and then install the correct OEM information if Wi-Fi is nto available.

###### Update 1.8.2

Fixed crashing issue with Wi-Fi searching.

###### Update 1.8.1

Improved taskbar pinning on Windows 7, 8, and 8.1. Reintroduced taskbar pinning for Windows 10.

###### Update 1.8.0

Added feature that auto detects current Wi-Fi network, eliminating the need for multiple installers.

###### Update 1.7.5

Removed commands that disable some telememtary and Cortana.

###### Update 1.7.4

Fixed incorrect wording when installing Mozilla Firefox.

###### Update 1.7.3

Fixed command prompt not going invisible on Romsey installer and changed wording for installation.

###### Update 1.7.2

Changed directory for icon file.

###### Update 1.7.1

Updated exe to include icon and loading animation.

###### Update 1.7.0

Added loading form so you know the program is loading.

###### Update 1.6.0

Made command line invisible for sleaker look.

###### Update 1.5.6

Fixed crashing issue on Windows 7.

###### Update 1.5.5

Fixed problem with Kaspersky and TeamViewer not installing.

###### Update 1.5.4

Fixed crashing problem.

###### Update 1.5.3

Fixed issue with Documents folder.

###### Update 1.5.2

Fixed file cleanup on completion.

###### Update 1.5.1

Removed extra lines for downloading files.

###### Update 1.5.0

Temporarily removed automatically setting taskbar icons in Windows 10 due to issue and added KIS Chocolatey package.

###### Update 1.4.1

Fixed OEM website HTTPS information.

###### Update 1.4.0

Added autoscrolling feature to list box and reduced size of install window.

###### Update 1.3.0

Renamed to CRC Installer and added new Romsey version.

###### Update 1.2.1

Fixed issue with Google Chrome checksums.

###### Update 1.2.0

Replaced text with icon of program for cleaner look.

###### Update 1.1.3

Fixed crashing issue with icon file.

###### Update 1.1.2

Removed exit button and will now close 15 seconds after the install has finished.

###### Update 1.1.1

Fixed issue with downloading CleanCF.ps1.

###### Update 1.1.0

Programs now install in alphabetical order and added an exit button than cleans up temporary files.
