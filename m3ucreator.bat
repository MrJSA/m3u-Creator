@echo off
setlocal enabledelayedexpansion

rem Find the first .chd file
for %%F in (*.chd) do (
    set "firstName=%%~nF"
    goto :process
)

:process
if not defined firstName (
    echo No .chd files found in the current directory.
    goto :end
)

echo Original name: !firstName!

rem Remove content within parentheses and one leading space for each set
set "newName=!firstName!"
:loop
set "tempName="
set "inParentheses=0"
set "spaceRemoved=0"
for /L %%i in (0,1,500) do (
    set "char=!newName:~%%i,1!"
    if "!char!"=="" goto :doneLoop
    if "!char!"=="(" (
        set /a "inParentheses+=1"
        if !spaceRemoved! equ 0 (
            set "spaceRemoved=1"
        )
    ) else if "!char!"==")" (
        set /a "inParentheses-=1"
    ) else if !inParentheses! equ 0 (
        set "tempName=!tempName!!char!"
    )
)
:doneLoop
set "newName=!tempName!"
if "!newName!" neq "!tempName!" goto :loop

rem Trim leading and trailing spaces
:trimLoop
if "!newName:~-1!"==" " (
    set "newName=!newName:~0,-1!"
    goto trimLoop
)

echo Processed name: !newName!

rem Create the .m3u file
set "outputFile=!newName!.m3u"
if exist "!outputFile!" del "!outputFile!"

rem Add all .chd files to the .m3u file
for %%F in (*.chd) do (
    echo %%~nxF>> "!outputFile!"
)

echo Created playlist: !outputFile!

:end
pause
