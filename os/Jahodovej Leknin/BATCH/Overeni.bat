@echo off

setlocal enabledelayedexpansion

set "soubor=%1"
set /a cisloRadku=1
set "validni=1"

for /f "tokens=*" %%a in (%soubor%) do ( if "%%a% neq "!lineNumber!" (
		set "isValid=0"
		got end
	)
	set /a lineNumber+=1
)

:end
if "!validni!"=="1" (
	echo Soubor je v pořádku.
	eit /b 0
) else (
	echo Soubor obsahuje chyby.
	exit /b 1
)