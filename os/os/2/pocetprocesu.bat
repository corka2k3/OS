::Pocet bezicich instanci zvolene aplikace
::syntaxe bat.bat cmd.exe
@echo off
IF ("%~1" equ "") (tasklist | find /c "winword.exe") ELSE (tasklist | find /c "%~1")
pause>nul
