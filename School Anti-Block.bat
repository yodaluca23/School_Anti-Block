@echo off
:x
taskkill /im lsproxy.exe /f
taskkill /im LSSASvc.exe /f
taskkill /im smart-agent-js-win.exe /f
taskkill /im makeca.exe /f
goto x