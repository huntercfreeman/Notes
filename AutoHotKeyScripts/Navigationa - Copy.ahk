#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState, AlwaysOff

; Allow normal CapsLock functionality to be toggled by Alt+CapsLock:
!CapsLock::
    GetKeyState, capsstate, CapsLock, T ;(T indicates a Toggle. capsstate is an arbitrary varible name)
    if capsstate = U
        SetCapsLockState, AlwaysOn
    else
        SetCapsLockState, AlwaysOff
    return

^PgDn::
	Send {Media_Next}
return


^PgUp::
	Send {Media_Prev}
return

; Always on Top
^SPACE::
Winset, Alwaysontop, , A ; ctrl + space
Return

CapsLock & a::Ctrl
CapsLock & s::Shift

CapsLock & h::
    Send {Blind}{Left}
return

CapsLock & j::
    Send {Blind}{Down}
return

CapsLock & k::
    Send {Blind}{Up}
return

CapsLock & l::
	Send {Blind}{Right}
return

CapsLock & ]::
    Send {Blind}{End}
return

CapsLock & [::
    Send {Blind}{Home}
return





