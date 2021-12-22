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
        ; Spam Wheeldown
        ;Send, {WheelDown}

        Send, {WheelUp}
        RandomSleep(14,54)
    }

return