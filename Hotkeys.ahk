#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;Switch off CapsLock
SetCapsLockState, AlwaysOff
;map CapsLock to Esc
CapsLock::
Send,{Esc}
Return

#IfWinActive ahk_class VanDyke Software - SecureCRT
CapsLock::
	SendInput ^a
Return
#IfWinActive


#IfWinActive ahk_class mintty
CapsLock::
	SendInput ^a
Return
#IfWinActive

+;::
Send, {:}
Return

`;::
Send, {;}
Return


;map jf into Enter
:C*?:mf::
Send, {enter}
Return

:C*?:ssm::
Send, sudo service mysql
Return

:C*?:jgmail::
Send, jiangliang0811@gmail.com
Return

:C*?:justc::
Send, jal@mail.ustc.edu.cn
Return

:C*?:jqihai::
Send, jiangliang@qihai-inc.com
Return

:C*?:sv::
Send, sudo vim
Return

;map ;+lower case letter into corresponding upper case letter
`; & q::
Send, Q
Return

`; & w::
Send, W
Return

`; & e::
Send, E
Return

`; & r::
Send, R
Return

`; & t::
Send, T
Return

`; & a::
Send, A
Return

`; & s::
Send, S
Return

`; & d::
Send, D
Return

`; & f::
Send, F
Return

`; & g::
Send, G
Return

`; & z::
Send, Z
Return

`; & x::
Send, X
Return

`; & c::
Send, C
Return

`; & v::
Send, V
Return

`; & b::
Send, B
Return

`; & 1::
Send, {!}
Return

`; & 2::
Send, @
Return

`; & 3::
Send, {#}
Return

`; & 4::
Send, $
Return

`; & 5::
Send, `%
Return

`; & `::
Send, ~
Return

;map CapsLock+hjkl into left, down, up, right, the same as vim style
CapsLock & h::
if GetKeyState("control") = 0
{
	if GetKeyState("alt") = 0
		Send, {Left}
	else
		Send, !^{Left}
	Return
}

CapsLock & j::
if GetKeyState("control") = 0
{
	if GetKeyState("alt") = 0
		Send, {Down}
	else
		Send, !^{Down}
	Return
}

CapsLock & k::
if GetKeyState("control") = 0
{
	if GetKeyState("alt") = 0
		Send, {Up}
	else
		Send, !^{Up}
	Return
}

CapsLock & l::
if GetKeyState("control") = 0
{
	if GetKeyState("alt") = 0
		Send, {Right}
	else
		Send, +^{Right}
	Return
}

CapsLock & i::
if GetKeyState("control") = 0
{
	if GetKeyState("alt") = 0
		Send, {Home}
	else
		Send, +{Home}
	Return
}

CapsLock & o::
if GetKeyState("control") = 0
{
	if GetKeyState("alt") = 0
		Send, {End}
	else
		Send, +{End}
	Return
}
;map CapsLock+HJKL into Shift + {left, down, up, right}
CapsLock & n::
Send, +{Left}
Return

CapsLock & m::
Send, +{Down}
Return

CapsLock & ,::
Send, +{Up}
Return

CapsLock & .::
Send, +{Right}
Return

;transparent window
a := 0
^!j::
winget, T, Transparent, A
if (T == "") {
	WinSet, Transparent, 210, A
}
else {
	a := T-20
	if (a < 20) {
		a := 20
	}
	WinSet, Transparent, %a%, A
}
Return


^!k::
winget, T, Transparent, A
if (T == "") {
	Return
}
a := T+20
if (a > 210) {
	WinSet, Transparent, Off, A
}
else {	
	WinSet, Transparent, %a%, A
}
Return

^!u::
WinSet, Transparent, Off, A
Return

;map shift+backspace to delete
+Backspace::
Send, {Del}
Return