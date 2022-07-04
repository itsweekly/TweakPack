@echo off
::Start
title TweakPackConfig
echo We will disable UAC for a smoother experience!...
::Credits to AdamX, AtlasOS.
:permSUCCESS
SETLOCAL EnableDelayedExpansion
::UAC
echo Disabling UAC
C:\Users\%USERNAME%\TweakPack\src\tools\PowerRun.exe "C:\Users\%USERNAME%\TweakPack\src\scripts\Disable-UAC.reg"
echo Success
::Defender
echo Disabling Defender
C:\Users\%USERNAME%\TweakPack\src\tools\PowerRun.exe "C:\Users\%USERNAME%\TweakPack\src\scripts\Disable-Defender.reg"
echo Success
echo Disabling SmartScreen
C:\Users\%USERNAME%\TweakPack\src\tools\PowerRun.exe "C:\Users\%USERNAME%\TweakPack\src\scripts\Disable-SmartScreen.reg"
echo Success
::Powerplan
echo Importing PowerPlan
powercfg -import "C:\Users\%USERNAME%\TweakPack\src\scripts\Atlas.pow" 11111111-1111-1111-1111-111111111111
powercfg /s 11111111-1111-1111-1111-111111111111
echo Success
echo Disabling Power Throttling
C:\Users\%USERNAME%\TweakPack\src\tools\PowerRun.exe "C:\Users\%USERNAME%\TweakPack\src\scripts\Disable-Power-Throttling.reg"
echo Success
::Disable Spectre-Meltdown
C:\Users\%USERNAME%\TweakPack\src\tools\PowerRun.exe "C:\Users\%USERNAME%\TweakPack\src\scripts\Disable-Spectre-Meltdown.reg"
echo Success
::Temp Files
echo Deleting Temp Files
C:\Users\%USERNAME%\TweakPack\src\scripts\Delete-Temp-Files.cmd
echo Success
::Log Files
echo Deleting Log Files
C:\Users\%USERNAME%\TweakPack\src\scripts\Delete-Log-Files.cmd
echo Success
::Drivers
echo Installing Drivers
echo Installing Vcredist
C:\Users\%USERNAME%\TweakPack\src\scripts\vcredist\install_all.bat
echo Success
echo Installing Runtime
C:\Users\%USERNAME%\TweakPack\src\scripts\dxwebsetup.exe \Q
echo Success
::Disabling Windows Updates
echo Disabling Windows Updates
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableWindowsUpdateAccess" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate" /v "AllowAutoWindowsUpdateDownloadOverMeteredNetwork" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableDualScan" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate" /v "AUPowerManagement" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate" /v "SetAutoRestartNotificationDisable" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate" /v "ManagePreviewBuilds" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate" /v "ManagePreviewBuildsPolicyValue" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferFeatureUpdates" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate" /v "BranchReadinessLevel" /t REG_DWORD /d "20" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferFeatureUpdatesPeriodInDays" /t REG_DWORD /d "365" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferQualityUpdates" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferQualityUpdatesPeriodInDays" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "2" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AutoInstallMinorUpdates" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAUAsDefaultShutdownOption" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAUShutdownOption" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoRebootWithLoggedOnUsers" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "IncludeRecommendedUpdates" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "EnableFeaturedSoftware" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d "0" /f
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsStore" /v "AutoDownload" /t REG_DWORD /d "2" /f
echo Success
::Disabling Sticky Keys
echo Disabling Sticky Keys
C:\Users\%USERNAME%\TweakPack\src\tools\nsudo -U:C -P:E -Wait reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_DWORD /d "0" /f
C:\Users\%USERNAME%\TweakPack\src\tools\nsudo -U:C -P:E -Wait reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_DWORD /d "0" /f
C:\Users\%USERNAME%\TweakPack\src\tools\nsudo -U:C -P:E -Wait reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_DWORD /d "0" /f
echo Success
::Disabling Mouse Acceleration
echo Disabling Mouse Acceleration
C:\Users\%USERNAME%\TweakPack\src\tools\nsudo-U:C -P:E -Wait reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
C:\Users\%USERNAME%\TweakPack\src\tools\nsudo -U:C -P:E -Wait reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
echo Success
::Disable Uneeded Tasks
echo Disable Uneeded Tasks
schtasks /Change /Disable /TN "\MicrosoftEdgeUpdateTaskMachineCore" >nul 2>nul
schtasks /Change /Disable /TN "\MicrosoftEdgeUpdateTaskMachineUA" >nul 2>nul
schtasks /Change /Disable /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" >nul 2>nul
schtasks /Change /Disable /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" >nul 2>nul
schtasks /Change /Disable /TN "\Microsoft\Windows\DiskFootprint\Diagnostics" >nul 2>nul
schtasks /Change /Disable /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" >nul 2>nul
schtasks /Change /Disable /TN "\Microsoft\Windows\Application Experience\StartupAppTask" >nul 2>nul
schtasks /Change /Disable /TN "\Microsoft\Windows\Autochk\Proxy" >nul 2>nul
schtasks /Change /Disable /TN "\Microsoft\Windows\Application Experience\PcaPatchDbTask" >nul 2>nul
schtasks /Change /Disable /TN "\Microsoft\Windows\BrokerInfrastructure\BgTaskRegistrationMaintenanceTask" >nul 2>nul
schtasks /Change /Disable /TN "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" >nul 2>nul
schtasks /Change /Disable /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" >nul 2>nul
schtasks /Change /Disable /TN "\Microsoft\Windows\Defrag\ScheduledDefrag" >nul 2>nul
schtasks /Change /Disable /TN "\Microsoft\Windows\DiskFootprint\StorageSense" >nul 2>nul
schtasks /Change /Disable /TN "\MicrosoftEdgeUpdateBrowserReplacementTask" >nul 2>nul
schtasks /Change /Disable /TN "\Microsoft\Windows\Registry\RegIdleBackup" >nul 2>nul
schtasks /Change /Disable /TN "\Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" >nul 2>nul
echo Success
::Remove Edge
echo Remove Edge
rmdir /s /q "C:\Program Files (x86)\Microsoft" >nul 2>nul
echo Success
::Disable Hibernation
echo Disable Hibernation
powercfg -h off
echo Success
::Debloater
echo Installing Debloater
echo Installing runtime inside the deblaoter might break it.
powershell.exe "iwr -useb https://git.io/debloat|iex"
echo Success
::Finish
echo Computer must reboot!...
shutdown /r /f /t 10 /c "Required Reboot"
exit




