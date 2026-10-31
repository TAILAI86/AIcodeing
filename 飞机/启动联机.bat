@echo off
rem ============================================================
rem  Blue Airline LAN multiplayer server
rem  Run this on the host PC, then everyone joins with the
rem  IP address shown in this window.
rem ============================================================
cd /d %~dp0

set "NODE="
where node >nul 2>nul && set "NODE=node"
if not defined NODE if exist "C:\Users\47021\.workbuddy\binaries\node\versions\22.22.2-6\node.exe" set "NODE=C:\Users\47021\.workbuddy\binaries\node\versions\22.22.2-6\node.exe"
if not defined NODE if exist "D:\Program Files\nodejs\node.exe" set "NODE=D:\Program Files\nodejs\node.exe"

if not defined NODE (
  echo [ERROR] Node.js not found.
  echo Please install Node.js from https://nodejs.org and run this file again.
  pause
  exit /b 1
)

echo Starting Blue Airline LAN server ...
echo.
"%NODE%" "%~dp0联机服务器.js"
echo.
echo Server stopped. Press any key to close.
pause >nul
