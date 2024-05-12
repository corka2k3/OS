@echo off
set /p vstup=Zadejte vstup (cislo, pismena nebo kombinaci): 
call utill.bat %vstup%
if %errorlevel% equ 1 (
    echo Zadany vstup je cislo.
) else if %errorlevel% equ 2 (
    echo Zadany vstup jsou pismena.
) else if %errorlevel% equ 3 (
    echo Zadany vstup je kombinace cisla a pismen.
)
