#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

STUDIO_PATH = C:\Users\SupabSaelim\ifrs9\ifrs9{NumpadSub}studio
ADMIN_PATH := "C:\Users\SupabSaelim\ifrs9\admincentre"
NEPTUNE_PATH := "C:\Users\SupabSaelim\ifrs9\neptune"
TITATIUM_PATH := "C:\Users\SupabSaelim\ifrs9\titanium"
DATABASE_PATH := "C:\Users\SupabSaelim\ifrs9\databases"

!i::

Run atom

Run, cmd.exe,,,dbCmd
WinWaitActive, ahk_pid %dbCmd%
Send cd %DATABASE_PATH%
Send {Enter}
Send python dbrestore{NumpadDot}py {NumpadSub}r drop{NumpadSub}all && python dbinstall{NumpadDot}py && python dbrestore{NumpadDot}py {NumpadSub}r demo{NumpadSub}data
Send {Enter}

Run, cmd.exe,,,studioCmd
WinWaitActive, ahk_pid %studioCmd%
Send cd %STUDIO_PATH%
Send {Enter}
Send yarn start
Send {Enter}


Run, cmd.exe,,,adminCmd
WinWaitActive, ahk_pid %adminCmd%
Send cd %ADMIN_PATH%
Send {Enter}
Send yarn start
Send {Enter}

Run, cmd.exe,,,neptuneCmd
WinWaitActive, ahk_pid %neptuneCmd%
Send cd %NEPTUNE_PATH%
Send {Enter}
Send yarn start
Send {Enter}

Run, cmd.exe,,,titaniumCmd
WinWaitActive, ahk_pid %titaniumCmd%
Send cd %TITATIUM_PATH%
Send {Enter}
Send yarn start
Send {Enter}

return

!+d::

Run, cmd.exe,,,dbCmd
WinWaitActive, ahk_pid %dbCmd%
Send cd %DATABASE_PATH%
Send {Enter}
Send python dbrestore{NumpadDot}py {NumpadSub}r drop{NumpadSub}all && python dbinstall{NumpadDot}py && python dbrestore{NumpadDot}py {NumpadSub}r demo{NumpadSub}data
Send {Enter}

return
