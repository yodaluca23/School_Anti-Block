@echo off
setlocal disableDelayedExpansion
set q=^"
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
taskkill /F /im lsproxy.exe > nul 2> nul
taskkill /F /im LSSASvc.exe > nul 2> nul
Echo Now attempting to kill processes...
taskkill /F /im smart-agent-js-win.exe > nul 2> nul
taskkill /F /im makeca.exe > nul 2> nul
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
:: The single blank line within the following IN() clause is critical - DO NOT REMOVE
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