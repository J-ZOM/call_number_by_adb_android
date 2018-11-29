@echo off
cls
:begin
set /p UserInputPath=Hey! What number would You like?
adb -s "9885e6534e424f414e" shell am start -a android.intent.action.CALL -d tel:"%UserInputPath%"

if %UserInputPath%==%cls% goto begin
pause 4s

goto begin

