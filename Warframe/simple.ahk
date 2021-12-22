#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

~*f11::
Reload
Return

RandomSleep(min,max){
	Random, r, %min%, %max%
	Sleep %r%
	return
}

z::Send % "{LButton " . ( GetKeyState("LButton") ? "Up}" : "Down}" )
return
	

`::Send % "{w " . ( GetKeyState("w") ? "Up}" : "Down}" )
return

*~$LCtrl::
   RandomSleep(80,140)
   While GetKeyState("LCTRL","P"){
      Send {LCtrl down}
      RandomSleep(100,150)
      Send {LCtrl up}  
      RandomSleep(100,150)    
   }
return