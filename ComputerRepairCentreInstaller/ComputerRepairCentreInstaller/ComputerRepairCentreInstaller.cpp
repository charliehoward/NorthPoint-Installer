// -- Copyright (c) Charlie Howard 2016-2022 All rights reserved


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
#include <chrono>
#include <thread>
#pragma comment(lib, "urlmon.lib")
using namespace std;
int main()
{
	std::system("start C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe -WindowStyle Hidden Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force");
	CreateDirectoryA("C:\\Computer Repair Centre", NULL);
	HRESULT hr = URLDownloadToFile(NULL, _T("https://raw.githubusercontent.com/charliehoward/NorthPoint-Installer/master/computerRepairCentreInstaller.ps1"), _T("C:\\Computer Repair Centre\\computerRepairCentreInstaller.ps1"), 0, NULL);
	std::this_thread::sleep_for(std::chrono::milliseconds(10000));
	std::system("powershell.exe -WindowStyle Hidden -File \"C:\\Computer Repair Centre\\computerRepairCentreInstaller.ps1\"");
}