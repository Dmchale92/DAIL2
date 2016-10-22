SET BATCH_DIR=%~dp0

rem prep the root - mirror the root - ignore the subdirs when mirroring
robocopy "c:\program files (x86)\steam\steamapps\common\grim dawn\mods" "%BATCH_DIR%\DAIL2"  *.bat *.txt *.nsi README /MIR /xd *.* /xf cl*.txt

rem Various Infos
robocopy "%BATCH_DIR%\_Dev_info" "%BATCH_DIR%\DAIL2\_Dev_info"  /xd *.*

rem Difficulty Modes
robocopy "%BATCH_DIR%\DAIL - Grimmer (B)" "%BATCH_DIR%\DAIL2\DAIL - Grimmer (B)" /NDL /NFL /MIR /S  /xf *.arz *.arc *.7z /XD resources
robocopy "%BATCH_DIR%\DAIL - Grimmest (S)" "%BATCH_DIR%\DAIL2\DAIL - Grimmest (S)" /NDL /NFL /MIR /S  /xf *.arz *.arc *.7z /XD resources
robocopy "%BATCH_DIR%\DAIL - Normal (NG)" "%BATCH_DIR%\DAIL2\DAIL - Normal (NG)" /NDL /NFL /MIR /S  /xf *.arz *.arc *.7z /XD resources


rem Game Modes
robocopy "%BATCH_DIR%\DAIL - RIFT (DGA)" "%BATCH_DIR%\DAIL2\DAIL - RIFT (DGA)" /NDL /NFL /MIR /S  /xf *.arz *.arc *.map *.7z *.debug *.good *.DAIL /XD resources
robocopy "%BATCH_DIR%\DAIL - RIFT (DGA)\assets" "%BATCH_DIR%\DAIL2\DAIL - RIFT (DGA)\assets" /NDL /NFL /S  /xf *.arz *.arc *.7z *.debug *.good *.DAIL /XD resources
robocopy "%BATCH_DIR%\DAIL - Survival (GD Eternal)" "%BATCH_DIR%\DAIL2\DAIL - Survival (GD Eternal)" /NDL /NFL /MIR /S  /xf *.arz *.arc *.map *.7z *.debug *.good *.DAIL /XD resources
robocopy "%BATCH_DIR%\DAIL - Survival (GD Eternal)\assets" "%BATCH_DIR%\DAIL2\DAIL - Survival (GD Eternal)\assets" /NDL /NFL /S  /xf *.arz *.arc *.7z *.debug *.good *.DAIL /XD resources

rem GQ assets
robocopy "%BATCH_DIR%\DAILmergeGQ" "%BATCH_DIR%\DAIL2\DAILmergeGQ" /NDL /NFL /MIR /S  /xf *.arz *.arc *.7z
