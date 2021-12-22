#MaxThreadsPerHotkey 2
; Reloads program, when you're unsure if program is suspended
~*f11::
    Reload
Return

; Suspends program, ~ for higher priority in case of deadlock
~*f12::
    Suspend
Return

; Random delay to prevent bot detection
RandomSleep(min,max){
    Random, r, %min%, %max%
    Sleep %r%
return
} 

; Sends Control+V+ Enter every 0.114 to 0.354 seconds, any lower would brick web.whatsapp
toggle = 0
F8::
    Toggle := !Toggle
    While Toggle{
        ; Spam paste
        ;Send, ^v 
        ;Send, {Enter}

        ; Spam Wheeldown
        ;Send, {WheelDown}

        ;Click
        ;Send, { Enter }

        Send, { Enter }
        RandomSleep(500,600)

        ; Dying Light Extraction Screamer
        ; Send, {Space}
        ; RandomSleep(4000,5000)
        ; Send, {d Down} 
        ; RandomSleep(800,850)
        ; Send, {d Up}
        ; MouseMove, 0, 30, 50, R
        ; Send, {w Down}
        ; RandomSleep(2000,2300)
        ; Send, {w Up}
        ; Send, f
        ; RandomSleep(20000,30000)
    }
return