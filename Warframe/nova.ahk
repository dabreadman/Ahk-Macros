#MaxThreadsPerHotkey 2

RandomSleep(min,max){
	Random, r, %min%, %max%
	Sleep %r%
	return
}

~*f11::
Reload
Return

;z::
suspend 
return

;f11::
;WinGet, active_id, ID, A
;MsgBox, The active window's ID is "%active_id%"
;return

z:
	Send {w down}
	RandomSleep(2300,4500)
	Send {w up}

]::
	Ttoggle:=!Ttoggle
	loop {

		send {4}
		RandomSleep(10000,13000)

	} until !Ttoggle
	return


=