@echo off
title Live Time Display
:loop
cls
echo Current time: %time%
:: Wait for approximately 50 milliseconds before updating the time
ping localhost -n 1 -w 50 >nul
goto loop
