@echo off
rem ============================================================
rem  Blue Airline texture pack rebuilder
rem  Double-click to download all online textures into
rem  the "textures" folder next to this file (E:\CTL\textures).
rem  The game prefers local files and falls back to the
rem  network automatically when this folder is missing.
rem ============================================================
cd /d %~dp0

set "NODE="
where node >nul 2>nul && set "NODE=node"
if not defined NODE if exist "C:\Users\47021\.workbuddy\binaries\node\versions\22.22.2-6\node.exe" set "NODE=C:\Users\47021\.workbuddy\binaries\node\versions\22.22.2-6\node.exe"
if not defined NODE if exist "D:\Program Files\nodejs\node.exe" set "NODE=D:\Program Files\nodejs\node.exe"

if not defined NODE (
  echo [ERROR] Node.js not found.
  echo Please install Node.js from https://nodejs.org and run this file again.
  echo You can also click "Download texture pack" inside the game menu.
  pause
  exit /b 1
)

echo Downloading textures to %CD%\textures ...
echo.

"%NODE%" "%~dp0download_textures.js"

echo.
echo Finished. Press any key to close this window.
pause >nul
