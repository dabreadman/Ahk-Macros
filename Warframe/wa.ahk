#IfWinActive, Warframe
#MaxThreadsPerHotkey 3

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


		toggle:=0
;
;		`::
;		toggle:=!toggle
;			while (toggle=1)
;			{
;				random, delay2, 224, 730
;				send, 2
;				sleep, %delay2%
;				sleep, 1800
;			}
;			return
;
;		Toggle:=0
;		$e::
;			Toggle := !Toggle
;			While (Toggle=1)
;			{
;				random, delay3, 40, 100	
;				send, e
;				sleep 175
;				sleep, %delay3%
;			}
;			return
;
;		$LShift::
;			random, delay4, 40, 80	
;			random, delay5, 40, 80	
;			send {LShift down}
;			random, delay4, 40, 80	
;			sleep, %delay4%
;			Send {space}
;			sleep, %delay5%
;			Send {LShift up}
;			return
;
;		$w::Send % "{w " . ( GetKeyState("w") ? "Up}" : "Down}" )
;		return

		]::
			Ttoggle:=!Ttoggle
			loop {
				;walk back
				send {s down}
				random, delay6, 1200, 1400	
				sleep, %delay6%
				send {s up}
				
				;operator + misc
				random, delay7, 400, 600	
				sleep, %delay7%
				send 5
				random, delay8, 600, 800	
				sleep, %delay8%
				send 5
				
				;front
				random, delay9, 400, 700	
				sleep, %delay9%
				send {w down}
				random, delay10, 1800, 2100	
				sleep, %delay10%
				send {w up}
				
				;misc
				RandomSleep(400,600)
				send 4
				RandomSleep(1200,1700)
				Send e
				
				;cycle
				random, delay11, 6000, 16000	
				sleep, %delay11%
			} until !Ttoggle
		return
	





