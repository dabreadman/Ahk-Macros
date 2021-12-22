#MaxThreadsPerHotkey 3

; Reloads program, when you're unsure if program is suspended
~*f9::
    Reload
Return

; Suspends program, ~ for higher priority in case of deadlock
~*f12::
    Suspend
Return

F4::
    Toggle:=!Toggle
    If Toggle
        SetTimer, Trigger, -1
return

Trigger:
    While (Toggle)
    {
        ControlClick, x55 y77, Minecraft* 1.18.1 - Multiplayer (3rd-party Server)
        Sleep 1000
    }
Return