::Vytvořte skript, který bude využívat druhý skript k zjištění informace o 
::vstupu od uživatele z klávesnice v příkazové řádce Windows (Command Prompt). Zjištěná informace bude odpovídat:

::jedná se o číslo,
::jedná se o písmena,
::jedná se o kombinace písmen a čísel.
::Informaci z druhého skriptu vrátíte pomocí návratového kódu (exit code).
::První skript vypíše na konzoli rozhodnutí, o jaký typ informace se jedná podle nastavené hodnoty ErrorLevel získané z druhého skriptu.
::Př.:
::1. skript bude mít následující instrukce:

::set /p vstup=Zadejte číslo: 
::call otestujVstup.bat %vstup%
::if %ErrorLevel% EQU 1 echo je to číslo
::if %ErrorLevel% EQU 2 echo jsou to písmena
::if %ErrorLevel% EQU 3 echo je to kombinace čísla a písmen

@echo off
set /p vstup=Zadejte cislo: 
call otestujVstup.bat %vstup%
if %ErrorLevel% EQU 1 echo je to cislo
if %ErrorLevel% EQU 2 echo jsou to pismena
if %ErrorLevel% EQU 3 echo je to kombinace cisla a pismen