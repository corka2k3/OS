::Vytvořte skript, který vrátí počet instancí programu CMD.EXE v příkazové řádce Windows (Command Prompt).
@echo off
tasklist /fi "imagename eq cmd.exe" | find /i "cmd.exe" /c
pause
