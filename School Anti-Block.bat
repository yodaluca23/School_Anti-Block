@echo off
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
cls
:x
taskkill /F /im lsproxy.exe
taskkill /F /im LSSASvc.exe
taskkill /F /im smart-agent-js-win.exe
taskkill /F /im makeca.exe
goto x
