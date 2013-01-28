@echo off
cd /d %~dp0
xcopy /y "openfonts\*" "%windir%\fonts\" )
xcopy /y "adobe\*" "%windir%\fonts\" 