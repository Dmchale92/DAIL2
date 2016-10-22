SET BATCH_DIR=%~dp0

@ECHO ON

SET REG_KEY=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 219990
SET VALUE_NAME=InstallLocation
FOR /F "tokens=2*" %%A IN ('REG.exe query "%REG_KEY%" /v "%VALUE_NAME%"') DO (set pInstallDir=%%B)
echo %pInstallDir%

REM UPDATE DAIL
SET TARGET=DAIL - Normal (NG)
CALL :UPDATE
PAUSE

REM UPDATE DAIL
SET TARGET=DAIL - Grimmer (B)
CALL :UPDATE
PAUSE

REM UPDATE DAIL
SET TARGET=DAIL - Grimmest (S)
CALL :UPDATE
PAUSE

REM UPDATE DAIL - RIFT
SET TARGET=DAIL - RIFT (DGA)
CALL :UPDATE
PAUSE

REM UPDATE DAIL - Survival
SET TARGET=DAIL - Survival (GD Eternal)
CALL :UPDATE
PAUSE

REM GOTO END ECHO
GOTO :ENDECHO

:UPDATE
copy /Y "%BATCH_DIR%updatearcs.bat" "%BATCH_DIR%%TARGET%\resources"
PUSHD "%BATCH_DIR%%TARGET%\resources"
robocopy "%BATCH_DIR%\DAILmergeGQ" "%BATCH_DIR%%TARGET%" /S /NFL /NDL
ECHO call updatearcs.bat
call updatearcs.bat
del /Q updatearcs.bat
POPD
GOTO :EOF

:ENDECHO
echo MAKE SURE YOU CTRL+C HERE
rem pause