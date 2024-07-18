@echo off
for /R "%~dp0" %%I in (*.chd) do for %%J in ("%%~dpI.") do echo %%~nxI>>"%%~dpI%%~nxJ.m3u"