@echo off

rem Read a number emulating SET /P command
rem Antonio Perez Ayala

setlocal
rem Define the following variable before call InputNumber subroutine
set "thisFile=%~F0"

call :InputNumber number="Enter a number of up to 9 digits: "
echo Number read: %number%
goto :EOF


:InputNumber var="prompt" [digits]

setlocal EnableDelayedExpansion

rem Initialize variables
if "%5" equ "" (set numDigits=9)
set "digits=0123456789"
for /F %%a in ('copy /Z "%thisFile%" NUL') do set "CR=%%a"
for /F %%a in ('echo prompt $H ^| cmd') do set "BS=%%a"

rem Show the prompt and start reading
set /P "=%~2" < NUL
set "input="
set i=0

:nextKey
   set "key="
   for /F "delims=" %%a in ('xcopy /W "%thisFile%" "%thisFile%" 2^>NUL') do if not defined key set "key=%%a"

   rem If key is CR: terminate input
   if "!key:~-1!" equ "!CR!" goto endRead

   rem If key is BS: delete last char, if any
   set "key=!key:~-1!"
   if "!key!" equ "!BS!" (
      if %i% gtr 0 (
         set /P "=!BS! !BS!" < NUL
         set "input=%input:~0,-1%"
         set /A i-=1
      )
      goto nextKey
   )

   rem If key is not a digit: ignore it
   if "!digits:%key%=!" equ "%digits%" goto nextKey

   rem If can not accept more digits: ignore it
   if %i% equ %numDigits% goto nextKey

   rem Else: show and accept the digit
   set /P "=%key%" < NUL
   set "input=%input%%key%"
   set /A i+=1

goto nextKey

:endRead
echo/
endlocal & set "%~1=%input%"

goto InputNumber var="prompt" [digits]