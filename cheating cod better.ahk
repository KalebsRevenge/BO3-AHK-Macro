#SingleInstance, Force

Toggle := 0 ; Starting Mode = OFF

F9::
	Toggle := !Toggle
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

#If, (Toggle = 1)
	LButton::
		While(GetKeyState("LButton", "P")) {
			SendInput, {Blind}{LButton}
			Sleep, 25 
		}		
	return

F10::Suspend                      ;Toggle 'Trigger key' off/on

;annoyingly bulk of this code was actually from reddit i had been working on something to do this for a few days thought i would ;share the original source in the code for recognition https://www.reddit.com/r/AutoHotkey/comments/x211ik/toggle_space_bar_spam/
;added autofire on a toggle scavanged from https://www.autohotkey.com/boards/viewtopic.php?t=57018