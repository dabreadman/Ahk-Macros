~*]::
Reload
Return

trigger:=0
[::
	trigger:=!trigger
	while(trigger)
	{
		send {LButton down}
		sleep 2000
		send {LButton up}
		sleep 100
	}
	return