@echo off
echo Restarting League client window...

REM Kill any process whose *main window title* contains "League of Legends"
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "Get-Process | Where-Object { $_.MainWindowTitle -like '*League of Legends*' } | Stop-Process"

echo.
echo Done. Press any key to close.
pause >nul