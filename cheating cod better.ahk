#SingleInstance, Force
Toggle2 := 1
Toggle1 := 0 ; Starting Mode = OFF
F10::Suspend                      ;Toggle 'Trigger key' off/on
F8::
	Toggle2 := !Toggle2
F9::
	Toggle1 := !Toggle1
#If, (Toggle2 = 1)
*Space::                          ;Trigger key
  While GetKeyState("Space","P"){ ;  If 'Trigger key' held...
	
	Send {Shift}			      ;    Press 'Shift'
    Send {Space}                  ;    Press 'Space'
	Sleep 100                     ;    Don't spam the system 
  }                               ;  End If block
Return                            ;End code block
*LControl::                         ;Trigger key
  While GetKeyState("LControl","P"){ ;  If 'Trigger key' held...
	Send {Shift}			      ;    Press 'Shift'
    Send {Space}                  ;    Press 'Space'
	Send {x}					  ;    Press 'x'  
	Send {x}					  ;    Press 'x'
	Sleep 100                     ;    Don't spam the system
  }                               ;  End If block
Return                            ;End code block

#If, (Toggle1 = 1)
	LButton::
		While(GetKeyState("LButton", "P")) {
			SendInput, {Blind}{LButton}
			Sleep, 70
		}		
	return



;annoyingly bulk of this code was actually from reddit i had been working on something to do this for a few days thought i would ;share the original source in the code for recognition https://www.reddit.com/r/AutoHotkey/comments/x211ik/toggle_space_bar_spam/
;added autofire on a toggle scavanged from https://www.autohotkey.com/boards/viewtopic.php?t=57018