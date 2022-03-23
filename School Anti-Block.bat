@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') 

do (
  set "DEL=%%a"
)
Color 05
Title School Anti-Block
Echo.
Echo ================================
Echo    Windows School Anti-Block
Echo          Created by:
call :colorEcho 03 "          @yodaluca23"
Echo            v1.2.1
Echo ================================
Echo.
Echo.
Echo.
pause
:Error
cls
:Task
taskkill /F /im lsproxy.exe
taskkill /F /im LSSASvc.exe
taskkill /F /im smart-agent-js-win.exe
taskkill /F /im makeca.exe
goto Task
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1\
Echo.
Echo.
Echo An Error Has Ocurred.
Echo.
Echo.
Echo Would you like to retry?
pause
goto Error
Echo An Unforscene Error Has Occured Please Reopen The Script.
