@echo off
cls
:begin
set /p1 UserInputPath1=Hey! What's your adb device ID?

set /p2 UserInputPath2=What number would You like?
adb -s "%UserInputPath1%" shell am start -a android.intent.action.CALL -d tel:"%UserInputPath2%"

if %UserInputPath2%==%cls% goto begin
pause 4s
:Error
ECHO You did not enter correct number! Bye bye!!
:End

goto begin

