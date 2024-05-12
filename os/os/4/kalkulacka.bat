::Vytvořte skript, který načte z konzole od uživatele jeden vstup reprezentující výraz (základní binární operace, tj. +-*/; 
::zadáno bez mezer, pouze celá nezáporná čísla) a vrátí dvě informace: vyhodnocený výraz a 
::typ operace (stačí symbol operátoru). Řešte v příkazové řádce Windows (Command Prompt).
@echo off
set /p vyraz="Zadejte vyraz bez mezer: "

set /a vysledek=%vyraz%

if "%vyraz:*/=%"=="%vyraz%" (
    if "%vyraz:+=%"=="%vyraz%" (
        if "%vyraz:-=%"=="%vyraz%" (
            set "operator=*"
        ) else (
            set "operator=-"
        )
    ) else (
        set "operator=+"
    )
) else (
    set "operator=/"
)

echo Vyhodnoceny vyraz: %vysledek%
echo Typ operace: %operator%
