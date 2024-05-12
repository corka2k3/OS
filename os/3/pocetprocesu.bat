::napište skript, který spočítá počet spuštěných instancí od zvoleného proceus(např. putty.exe). zjištovací proces bude předán jako argument skriptu

@echo off

setlocal enabledelayedexpansion

set "process=%~1"
set "count=0"

for /f %%A in ('tasklist /FI "IMAGENAME eq %process%" /NH') do (
    set /a "count+=1"
)

echo Počet spuštěných instancí procesu %process%: %count%

endlocal
