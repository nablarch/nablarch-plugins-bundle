cd %~dp0
set tool_dir=%~dp0

@call :SET_YUIDOC yuidoc

@if "%command%"=="" GOTO YUIDOC_NOTFOUND

pushd ..\..\node_modules
call %command% -c %tool_dir%\yuidoc.json
popd

goto END

:YUIDOC_NOTFOUND
echo 'yuidoc command not found.'

:END
pause
exit /b

:SET_YUIDOC
@set command=%~$PATH:1
exit /b

