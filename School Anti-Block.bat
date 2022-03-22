@echo off
Color 02
Title School Anti-Block
Echo.
Echo ================================
Echo    Windows School Anti-Block
Echo      Created by yodaluca23
Echo            v1.0.1
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
