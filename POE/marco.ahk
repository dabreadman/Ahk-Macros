;Lines starting with a ; are comments and are not part of the actual script.
;If you want to deactivate a flask press(e.g. because it is your hp flask) simply add a ; to the start of the line

;this line makes the script only work when Path of Exile is the active window
#IfWinActive, ahk_class POEWindowClass
#MaxThreadsPerHotkey 2

;The key (or mouse button) you press to activate the script. For a list of supported "keys" and combinations, see https://autohotkey.com/docs/Hotkeys.htm
;XButton1 = "Back"-Button on my mouse. For a complete list of special keys, see https://autohotkey.com/docs/KeyList.htm
~*f11::
Reload
Return

~*f12::
Suspend
Return

RandomSleep(min,max){
	Random, r, %min%, %max%
	Sleep %r%
	return
}


3::
{
	;Initialize random delays between 57 and 114 ms (arbitrary values, may be changed)
	random, delay2, 57, 114
	random, delay3, 57, 114
	random, delay4, 57, 114

	;send, 2 ;simulates the keypress of the 1 button. If you use another button, change it!

	;RandomSleep(57,114)
	;send w

	;sleep, %delay3%
	send, 3 ;simulates the keypress of the 3 button. If you use another button, change it!

	RandomSleep(57,114)
	send, 4 ;simulates the keypress of the 1 button. If you use another button, change it!

	RandomSleep(57,114)
	send, 5 ;simulates the keypress of the 3 button. If you use another button, change it!

}
return

;3::
{
	;Initialize random delays between 57 and 114 ms (arbitrary values, may be changed)


	send, 3 ;simulates the keypress of the 1 button. If you use another button, change it!

	RandomSleep(57,114)
	send, 4 ;simulates the keypress of the 3 button. If you use another button, change it!

	RandomSleep(57,114)
	send, 5 ;simulates the keypress of the 3 button. If you use another button, change it!


}
return

`::Send % "{Click " . ( GetKeyState("LButton") ? "Up}" : "Down}" ) 

;RButton::Send % "{Click " . ( GetKeyState("RButton") ? "Up}" : "Down}" ) 


F9::Send % "{Shift " . ( GetKeyState("Shift") ? "Up}" : "Down}" ) 


;space::Send % "{space " . ( GetKeyState("space") ? "Up}" : "Down}" ) 


^z::
	Toggle:=!Toggle
	If Toggle
		SetTimer, Trigger, -1
return

Trigger:

While (Toggle)
	{
		send {Ctrl down}
		Click
		RandomSleep(10,20)
		send {Ctrl up}
		RandomSleep(100,130)
	}

Return

;$q::
	Send q
	RandomSleep(220,240)
	send d
	return

;p::
	Send {Shift down}
	Click
	RandomSleep(30,50)
	Send, {Enter}
	Send {Shift up}

