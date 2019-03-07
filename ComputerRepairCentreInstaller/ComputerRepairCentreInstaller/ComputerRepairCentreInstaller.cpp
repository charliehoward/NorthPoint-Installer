// -- Copyright (c) Charlie Howard 2016-2019 All rights reserved


#include "pch.h"
#include <iostream>
#include <io.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <string>
#include <windows.h>
#include <tchar.h>
#include <urlmon.h>
#include <cstdlib>
#include <io.h>
#include <stdlib.h>
#pragma comment(lib, "urlmon.lib")
using namespace std;
int main()
{
	std::system("start C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe -WindowStyle Hidden Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force");
	std::system("start C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe -WindowStyle Hidden Remove-Item -Path \"C:\\Computer Repair Centre\\*\" –Recurse -Force");
	CreateDirectoryA("C:\\Computer Repair Centre", NULL);
	HRESULT hr = URLDownloadToFile(NULL, _T("https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/computerRepairCentreInstaller.ps1"), _T("C:\\Computer Repair Centre\\computerRepairCentreInstaller.ps1"), 0, NULL);
	std::system("powershell.exe -WindowStyle Hidden -File \"C:\\Computer Repair Centre\\computerRepairCentreInstaller.ps1\"");
}