;#If WinActive("ahk_exe GenshinImpact.exe")
#MaxThreadsPerHotkey 2
; Reloads program, when you're unsure if program is suspended
~*f11::
Reload
Return

; Suspends program, ~ for higher priority in case of deadlock
~*f12::
Suspend
Return

; $Mbutton::
; 	Send {Mbutton down}
; 	RandomSleep(2700,3100)
; 	send {Mbutton up}
; return

; Random delay to prevent bot detection
RandomSleep(min,max){
    Random, r, %min%, %max%
    Sleep %r%
    return
}

;$`:: Send % "{w " . ( GetKeyState("w") ? "Up}" : "Down}" )
;return

`:: Send % "{Click " . ( GetKeyState("LButton") ? "Up}" : "Down}" )
return

	toggle:=0
$t:: 
	Random, r, 13,18 
	loop %r% 
	{
		send {f}
		RandomSleep(90,120)
	} 
	return
	