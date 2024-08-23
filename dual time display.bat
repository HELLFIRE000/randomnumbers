@echo off
title Dual Timer Display

:: Initialize the millisecond counter
set /a ms=1

:loop
cls
:: Display the current time
echo Current time: %time%

:: Convert the millisecond counter to hours, minutes, seconds, and milliseconds
set /a hours=ms/3600000
set /a minutes=(ms/60000)%%60
set /a seconds=(ms/1000)%%60
set /a milliseconds=ms%%1000

:: Display the counting timer
echo Timer: %hours%:%minutes%:%seconds%.%milliseconds%

:: Increment the millisecond counter by 50 milliseconds
set /a ms+=50

:: Wait for approximately 50 milliseconds before updating again
ping localhost -n 1 -w 50 >nul

:: If the counter reaches or exceeds 1 hour, reset to 1 millisecond
if %ms% geq 216000000 set /a ms=1

goto loop