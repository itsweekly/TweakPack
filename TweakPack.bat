@echo off
color a
type C:\Users\%USERNAME%\TweakPack\src\cmd\ascii.txt
set /p pause="Press any key to start!..."
C:\Users\%USERNAME%\TweakPack\src\tools\nsudo -U:T -P:E -Wait C:\Users\%USERNAME%\TweakPack\src\TweakPackConfig.bat /start
echo Please wait. This may take a moment. DO NOT CLOSE THIS WINDOW