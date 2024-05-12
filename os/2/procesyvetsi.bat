::seznam procesu vetsich nez 30MB
::memusage gt pocet v KB
@echo off
tasklist /fi "memusage gt 30000"
pause
