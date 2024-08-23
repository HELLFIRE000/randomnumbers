@echo off
setlocal enabledelayedexpansion

REM Generate a random number between 1 and 100
set /a random_number=%random% %% 100 + 1
echo Random number: %random_number%

REM Create a timestamped directory
for /f "tokens=1-4 delims=/:. " %%a in ("%date% %time%") do (
    set timestamp=%%d%%b%%c_%%e%%f
)
set directory=backup_%timestamp%

REM Make the directory
mkdir "%directory%"
echo Created directory: %directory%

REM Print a completion message
echo Script completed.

pause