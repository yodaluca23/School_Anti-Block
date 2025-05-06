@echo off
setlocal disableDelayedExpansion
set q=^"
Color 07
Title School Anti-Block
Echo.
call :c 0D "================================" /n
call :c 0C "    Windows School Anti-Block" /n
call :c 09 "          Created by:" /n
call :c 0B "          @yodaluca23" /n
call :c 0A "            v1.3.0" /n
call :c 0D "================================" /n
Echo.
Echo.
Echo.
pause
set processesToKill=lsproxy.exe client32.exe Client32.exe Runplugin64.exe runplugin.exe LSSASvc.exe smart-agent-js-win.exe makeca.exe

:Error
cls
:Task
rem Iterate through the array and kill each process
for %%p in (%processesToKill%) do (
    taskkill /F /im %%p
)

Echo Now attempting to kill processes...
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
Echo An Unforseen Error Has Occured. Please Reopen The Script.
Echo.
:c
setlocal enableDelayedExpansion
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:colorPrint Color  Str  [/n]
setlocal
set "s=%~2"
call :colorPrintVar %1 s %3
exit /b

:colorPrintVar  Color  StrVar  [/n]
if not defined DEL call :initColorPrint
setlocal enableDelayedExpansion
pushd .
':
cd \
set "s=!%~2!"
for %%n in (^"^

^") do (
  set "s=!s:\=%%~n\%%~n!"
  set "s=!s:/=%%~n/%%~n!"
  set "s=!s::=%%~n:%%~n!"
)
for /f delims^=^ eol^= %%s in ("!s!") do (
  if "!" equ "" setlocal disableDelayedExpansion
  if %%s==\ (
    findstr /a:%~1 "." "\'" nul
    <nul set /p "=%DEL%%DEL%%DEL%"
  ) else if %%s==/ (
    findstr /a:%~1 "." "/.\'" nul
    <nul set /p "=%DEL%%DEL%%DEL%%DEL%%DEL%"
  ) else (
    >colorPrint.txt (echo %%s\..\')
    findstr /a:%~1 /f:colorPrint.txt "."
    <nul set /p "=%DEL%%DEL%%DEL%%DEL%%DEL%%DEL%%DEL%"
  )
)
if /i "%~3"=="/n" echo(
popd
exit /b


:initColorPrint
for /f %%A in ('"prompt $H&for %%B in (1) do rem"') do set "DEL=%%A %%A"
<nul >"%temp%\'" set /p "=."
subst ': "%temp%" >nul
exit /b


:cleanupColorPrint
2>nul del "%temp%\'"
2>nul del "%temp%\colorPrint.txt"
>nul subst ': /d
