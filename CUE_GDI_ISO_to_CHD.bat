for /r %%i in (*.cue, *.gdi, *.iso) do chdman createcd -i "%%i" -o "%%~ni.chd"
