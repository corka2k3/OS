::Vytvořte dávkový soubor, který bude fungovat jako simulátor hodu 6 kostkami (klasické 6 stěnné).
::Použijte příkaz FOR.
@echo off
setlocal enabledelayedexpansion

set /p rolls=Zadejte pocet hodu:

for /l %%i in (1,1,%rolls%) do (
    set /a roll=!random! %%6 +1
    echo Hod %%i: !roll!
)
pause