@echo off
setlocal enabledelayedexpansion

REM Generate a random number between 1 and 100
set /a random_number=%random% %% 100 + 1
echo Random number: %random_number%

REM Print a completion message
echo Script completed.

pause
