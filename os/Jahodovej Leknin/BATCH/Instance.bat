@echo off

set instance=0

if %instance%==0 set instance=winword.exe
echo Pocet bezicich instanci je:
tasklist /FI "IMAGENAME eq %instance%" /NH | find /C "%instance%"
