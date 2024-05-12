@echo off
setlocal enabledelayedexpansion

set "file=pracovnici-utf8.csv"
set "sum=0"
set "count=0"

for /F "tokens=5 delims=;" %%a in ('type "%file%" ^| findstr /R /V "^$"') do (
    set /A "sum+=%%a"
    set /A "count+=1"
)

if %count% equ 0 (
    echo Nejsou k dispozici žádná data o pracovnících.
) else (
    set /A "average=sum/count"
    echo Průměr věků pracovníků: !average!
)

endlocal
