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

;]::
	Ttoggle:=!Ttoggle
	loop {
		;walk back
		send {s down}
		random, delay6, 1200, 1400	
		sleep, %delay6%
		send {s up}
		
		;operator + misc
		;random, delay7, 400, 600	
		;sleep, %delay7%
		;send {5}
		;random, delay8, 600, 800	
		;sleep, %delay8%
		;send {5}
		
		;front
		random, delay9, 400, 700	
		sleep, %delay9%
		send {w down}
		random, delay10, 1800, 2100	
		sleep, %delay10%
		send {w up}
		
		;misc
		RandomSleep(400,600)
		send {4}
		RandomSleep(2000,2300)
		send {2}
		RandomSleep(1000,1200)
		;send {e}
		
		;cycle
		random, delay11, 6000, 10000	
		sleep, %delay11%
	} until !Ttoggle
	return


]::
	Ttoggle:=!Ttoggle
	Send % "{w " . ( GetKeyState("w") ? "Up}" : "Down}" )
	loop {
		send {e}
		RandomSleep(170,230)
	} until !Ttoggle
	send {w up}
	return