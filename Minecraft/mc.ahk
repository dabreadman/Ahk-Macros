#MaxThreadsPerHotkey 3

ControlFocus, Minecraft* 1.18.1 - Multiplayer (3rd-party Server)
; Reloads program, when you're unsure if program is suspended
~*f9::
    Reload
Return

; Suspends program, ~ for higher priority in case of deadlock
~*f12::
    Suspend
Return

`:: Send % "{Click " . ( GetKeyState("LButton") ? "Up}" : "Down}" )

]::Send % "{RButton " . ( GetKeyState("LButton") ? "Up}" : "Down}" )

$y:: Send % "{w " . ( GetKeyState("w") ? "Up}" : "Down}" )

RandomSleep(min,max){
    Random, r, %min%, %max%
    r:=floor(r/Speed)
    Sleep %r%
return
}
F4::
    Toggle:=!Toggle
    If Toggle
        SetTimer, Trigger, -1
return

Trigger:
    While (Toggle)
    {
        ;Send, {RButton}
        ;RandomSleep(330,380)
        Click
        Sleep 1000
    }
Return

F8::
    { 
        Click
        Send, {LButton Down}
        RandomSleep(3100,3400)
        Send, {LButton Up} 
    }
return

F6::
    Toggle2:=!Toggle2
    If Toggle2
        SetTimer, Trigger2, -1
return

Trigger2:
    counter := 1 
    While (Toggle2)
    {
        counter+=1 ; for eating

        ; after starting, move to killbox
        DllCall("mouse_event", uint, 1, int, 400, int, -120)
        loop, 25
        {
            Click
            Sleep, 1500
        }

        ; grab loot
        send, {w down}
        sleep 500
        send {w up}
        sleep 100
        send, {s down} 
        sleep 600
        send, {s up}

        ; after killing, deactivate switch
        DllCall("mouse_event", uint, 1, int, -400, int, 120)
        Click, Right

        ; go down
        Send, {w Down}
        Sleep 3000
        Send, {w Up}

        ; dropping
        Sleep 3000

        ; go back up
        Send, {s Down}
        Sleep 5000
        Send, {s Up}

        ; eat or wait
        if Mod(counter,10)=0{
            DllCall("mouse_event", uint, 1, int, 400, int, -120)
            send, {2}
            send, {RButton Down}
            sleep, 2000 ; t1 (takes 1.61 seconds)
            send, {RButton Up}
            send, {1}
            DllCall("mouse_event", uint, 1, int, -400, int, 120)
            Sleep 6000 ; t2 
        }
        Else{
            Sleep 8000 ; t1 + t2
        }

        ; go up to platform
        Send, {a Down}
        Sleep 3000
        Send, {a Up}

        ; hit the corner
        Send, {s Down}
        Sleep 1500
        Send, {s Up}

        ; start switch
        Click, Right
        sleep 2000

    }
Return