@echo off

setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

set /a min=0
set /a max=0
set /a beh_cyklu=0

for /F "tokens=3 delims=;" %%A in (prac.csv) DO (

	if !beh_cyklu! equ 0 (
		set /a min=%%A
		set /a max=%%A

	) ELSE (

		if !min! gtr %%A ( 
		set /a min=%%A 
		)
		if !max! lss %%A ( 
		set /a max=%%A 
		)

	)
 	
	set /a beh_cyklu=!beh_cyklu!+1

)

if "%1"=="max" if "%2"=="" (
    echo Max hodnota: !max!
	exit /B
)

if "%1"=="min" if "%2"=="" (
    echo Min hodnota: !min!
	exit /B
)

if "%1"=="min" if "%2"=="max" (
    echo Min hodnota: !min!
    echo Max hodnota: !max!
	exit /B
)

if "%1"=="max" if "%2"=="min" (
    echo Max hodnota: !max!
    echo Min hodnota: !min!
	exit /B
)




endlocal