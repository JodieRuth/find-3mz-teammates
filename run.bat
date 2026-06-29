@echo off
setlocal
cd /d "%~dp0"
set "PORT=8000"
start "" "http://localhost:%PORT%/"
py -3 -m http.server %PORT%
if errorlevel 1 python -m http.server %PORT%
