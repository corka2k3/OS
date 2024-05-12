::Vytvořte skript, který bude využívat cyklus FOR /F v příkazové řádce Windows (Command Prompt).
::Pokuste se zjistit (a demonstrovat) počet současně přístupných tokenů v jednom FOR cyklu 
::a následně nalezněte řešení (vnořené cykly) pro překonání tohoto limitu.

@echo off
setlocal enabledelayedexpansion
set input_File=C:\users\milko\Desktop\excel.csv
for /F "tokens=31 delims=;" %%a in (%input_File%) do (
  set b=%%a
  for /F "tokens=1-10 delims=;" %%c in ("!b!") do (
    echo %%a !b! %%c %%d %%e
  )
)
pause