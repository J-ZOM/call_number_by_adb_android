mode con:cols=60 lines=10
@echo off
	COLOR 7e
	TITLE [Phone call - android, ADB must be installed]
@echo off
:begin
	set /p UserInputPath=Hey! What number would You like to call?

if %UserInputPath% equ=="%cls%" goto begin
 pause
 cls
@echo off
goto begin