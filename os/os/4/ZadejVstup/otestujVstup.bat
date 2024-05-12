@echo off

echo %1|findstr /R "^[0-9]*$">nul
if %errorlevel% EQU 0 exit /B 1

echo %1|findstr /R "^[a-zA-Z]*$">nul
if %errorlevel% EQU 0 exit /B 2

echo %1|findstr /R "^[0-9a-zA-Z]*$">nul
if %errorlevel% EQU 0 exit /B 3
