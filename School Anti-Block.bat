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
:x
taskkill /im lsproxy.exe /f
taskkill /im LSSASvc.exe /f
taskkill /im smart-agent-js-win.exe /f
taskkill /im makeca.exe /f
goto x
