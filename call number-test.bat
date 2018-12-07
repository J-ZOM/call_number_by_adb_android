@echo off
setlocal

:begin
echo Input like: XY########
call :ReadInput INPUT="Type input: " "++########"
echo INPUT=%INPUT%
goto :EOF


:ReadInput var= "Prompt" "mask"
setlocal EnableDelayedExpansion

rem Characters for the mask are: # digit, + upcase letter, @ digit or upcase letter

rem Define the character sets used in the input
set "set[#]= 0123456789"
set "set[+]= ABCDEFGHIJKLMNOPQRSTUVWXYZ"
set "set[@]=%set[+]%%set[#]:~1%"

rem Initialize input process
set "var="
set /P "=%~2" < NUL
set "mask=%~3"
set "i=0"

:NextChar
   set "maskChar=!mask:~%i%,1!"
   choice /N /C !set[%maskChar%]! > NUL
   set "var=!var!!set[%maskChar%]:~%errorlevel%,1!"
   set /P "=!var:~-1!" < NUL
   set /A i+=1
if "!mask:~%i%!" neq "" goto NextChar
echo/

endlocal & set "%~1=%var%"
TIMEOUT /T 5
goto begin
REM exit /B