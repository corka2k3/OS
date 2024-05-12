@echo off
setlocal enabledelayedexpansion

rem Kontrola počtu argumentů
if "%~2"=="" (
    set "pocetKostek=%~1"
    set "pocetStran=6"
) else (
    set "pocetKostek=%~1"
    set "pocetStran=%~2"
)

rem Házení kostkou
for /l %%i in (1,1,%pocetKostek%) do (
    set /a "hod=(!random! %% pocetStran) + 1"
    echo Hod kostkou %%i: !hod!
)
pause
endlocal
