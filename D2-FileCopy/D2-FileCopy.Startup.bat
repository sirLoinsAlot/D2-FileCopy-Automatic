@echo on

:begin
tasklist /FI "IMAGENAME eq D2SE.exe" 2>NUL | find /I /N "D2SE.exe">NUL
if "%ERRORLEVEL%"=="0" goto start
goto begin

:start
powershell -noprofile -command "&{ start-process powershell -ArgumentList '-noprofile -file %~dp0\D2-FileCopy.Startup.ps1' -verb RunAs}"
