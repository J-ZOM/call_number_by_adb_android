mode con:cols=60 lines=10
@echo off
	COLOR 7e
	TITLE [Phone call - android, ADB must be installed]
@echo off
:begin
cls
:: Asking user for number to call / inserting the number variable and -call
	set /p UserInputPath=Hey! What number would You like to call?
REM		if %UserInputPath% equ=="%cls%" goto begin
	IF [%UserInputPath%] equ [] goto begin
:main
@echo off
	adb -s "9885e6534e424f414e" shell am start -a android.intent.action.CALL -d tel:"%UserInputPath%"
:msg call
		color fa
		@echo [-------------------------------------]
		@echo [-------------------------------------]
		@echo [---------------Calling---------------]
		@echo [--------------%UserInputPath%--------------]
		@echo [-------------------------------------]
				
		pause
@echo off
COLOR 7e
cls
REM :end
goto begin
REM :Error
REM ECHO You did not enter correct number! Bye bye! Try again!


