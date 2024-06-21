@echo off

for /f "tokens=1,2,5 delims=, " %%a in ('tasklist /FI "USERNAME eq %USERNAME%" /FI "MEMUSAGE lt 10240" /FI "SESSIONNAME eq Console" /NH /FO CSV') do (
	echo Jmeno procesu:%%a, PID: %%b, Vyuzitost pameti: (%%c^)
)

