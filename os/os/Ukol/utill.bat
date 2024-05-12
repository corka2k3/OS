@echo off
setlocal enabledelayedexpansion

rem Získání vstupu z prvního argumentu
set "vstup=%~1"

rem Test, zda je vstup číslo
set "cislo=0123456789"
set "pismeno=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

set "je_cislo=1"
set "je_pismeno=1"

rem Test, zda vstup obsahuje pouze číslice
for %%c in (!vstup!) do (
    if "!cislo:%%c=!"=="!cislo!" (
        set "je_cislo=0"
        goto :test_pismena
    )
)

:test_pismena
rem Test, zda vstup obsahuje pouze písmena
for %%c in (!vstup!) do (
    if "!pismeno:%%c=!"=="!pismeno!" (
        set "je_pismeno=0"
        goto :konec_testu
    )
)

:konec_testu
rem Výstupní hodnota na základě výsledků testů
if !je_cislo! equ 1 (
    exit /b 1
) else if !je_pismeno! equ 1 (
    exit /b 2
) else (
    exit /b 3
)
