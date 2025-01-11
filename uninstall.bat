@echo off
net session >nul 2>&1
if %errorLevel% neq 0 (
    powershell -Command "Start-Process cmd -ArgumentList '/c %~fs0' -Verb RunAs"
    exit /b
)
sc stop chromasdkproxyserver.exe
sc delete chromasdkproxyserver.exe
rmdir /S /Q daemon
mshta vbscript:Execute("msgbox ""ChromaSDK-Proxy removed"":close")
mshta vbscript:Execute("msgbox ""Please, delete the 'daemon' folder if you see it"":close")