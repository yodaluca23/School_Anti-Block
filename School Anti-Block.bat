@echo off
Color 05
Title School Anti-Block
Echo.
Echo ================================
Echo    Windows School Anti-Block
Echo          Created by:
powershell write-host -fore Cyan           @yodaluca23
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
Echo.
Echo.
Echo An Error Has Ocurred.
Echo.
Echo Would you like to retry?
pause
goto Error
Echo.
Echo.
Echo An Unforscene Error Has Occured Please Reopen The Script.
Echo.
