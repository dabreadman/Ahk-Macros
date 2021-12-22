RandomSleep(min,max){
	Random, r, %min%, %max%
	Sleep %r%
	return
}

~*f11::
Reload
Return

z::
suspend 
return

;f11::
;WinGet, active_id, ID, A
;MsgBox, The active window's ID is "%active_id%"
;return

]::
	Ttoggle:=!Ttoggle
	loop {
		send {2}
		RandomSleep(4300,5000)
		
	} until !Ttoggle
	return
	
;]::
	Ttoggle:=!Ttoggle
	loop {
		send {e}
		RandomSleep(120,200)
		

	} until !Ttoggle
	return	