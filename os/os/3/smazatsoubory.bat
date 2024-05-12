::napište skript, který smaže v aktuálním adresáři soubory, které jsou vetší nez hodnota předaná argumentem skriptu (jednoty B). 
::Druhý nepoviný argument -s bude fungovat jen jako simulace( nebudou soubory mazány), bude vypsáno pouze hlášení o případech mazaných souborů

@echo off
setlocal enabledelayedexpansion

set "threshold=%~1"
set "simulate=%~2"

for %%F in (*) do (
    if %%~zF GTR %threshold% (
        if not "%simulate%"=="/s" (
            echo Mazání souboru: %%F
            del "%%F"
        ) else (
            echo Simulace - soubor byl přeskočen: %%F
        )
    )
)

endlocal
