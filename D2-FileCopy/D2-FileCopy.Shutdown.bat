@echo on

set firstRun="0"

:begin
tasklist /FI "IMAGENAME eq D2SE.exe" 2>NUL | find /I /N "D2SE.exe">NUL
if "%ERRORLEVEL%"=="0" (
    if "%firstRun%"=="0" ( 
        set firstRun="1" 
    ) else (
        goto start
    )
)
goto begin

:start
tasklist /FI "IMAGENAME eq D2SE.exe" 2>NUL | find /I /N "D2SE.exe">NUL
if "%ERRORLEVEL%"=="0" goto start
powershell -noprofile -command "&{ start-process powershell -ArgumentList '-noprofile -file %~dp0\D2-FileCopy.Shutdown.ps1' -verb RunAs}"