::výpočet maximálního platů z CSV souboru
@echo off
setlocal enabledelayedexpansion

set "maxSalary=0"
set "csvFile=emp.csv"

for /f "skip=1 tokens=19 delims=," %%a in (%csvFile%) do (
        set "salary=%%a"
        if !salary! gtr !maxSalary! (
            set "maxSalary=!salary!"
        )
)

echo Maximální plat: !maxSalary!

endlocal
