;#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
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

:C*?:mongoteamie_testauth::
Send, db.auth("rootabc","fjaj3rjksjda")
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

:C*?:psg::
Send, ps -ef | grep
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

`; & y::
Send, Y
Return

`; & h::
Send, H
Return

`; & n::
Send, N
Return

`; & 6::
Send, `^
Return

`; & 7::
Send, &
Return

`; & u::
Send, U
Return

`; & j::
Send, J
Return

`; & m::
Send, M
Return

`; & 8::
Send, *
Return

`; & i::
Send, I
Return

`; & k::
Send, K
Return

`; & ,::
Send, <
Return

`; & 9::
Send, (
Return

`; & o::
Send, O
Return

`; & l::
Send, L
Return

`; & .::
Send, >
Return

`; & 0::
Send, )
Return

`; & p::
Send, P
Return

`; & /::
Send, ?
Return

CapsLock & 6::
Send, {^}
Return

CapsLock & 7::
Send, &
Return

CapsLock & 8::
Send, *
Return

CapsLock & 9::
Send, (
Return

CapsLock & 0::
Send, )
Return

CapsLock & -::
Send, _
Return

CapsLock & =::
Send, {+}
Return

CapsLock & y::
Send, Y
Return

CapsLock & u::
Send, U
Return

CapsLock & i::
Send, I
Return

CapsLock & o::
Send, O
Return

CapsLock & p::
Send, P
Return

CapsLock & [::
Send, `{
Return

CapsLock & ]::
Send, }
Return

CapsLock & h::
Send, H
Return

CapsLock & j::
Send, J
Return

CapsLock & k::
Send, K
Return

CapsLock & l::
Send, L
Return

CapsLock & `;::
Send, :
Return

CapsLock & '::
Send, "
Return

CapsLock & n::
Send, N
Return

CapsLock & m::
Send, M
Return

CapsLock & ,::
Send, <
Return

CapsLock & .::
Send, >
Return

CapsLock & /::
Send, ?
Return

CapsLock & \::
Send, |
Return

2::
Send, 2
Return

;map CapsLock+hjkl into left, down, up, right, the same as vim style
2 & h::
if GetKeyState("control") = 0
{
	if GetKeyState("alt") = 0
		Send, {Left}
	else
		Send, !^{Left}
	Return
}

2 & j::
if GetKeyState("control") = 0
{
	if GetKeyState("alt") = 0
		Send, {Down}
	else
		Send, !^{Down}
	Return
}

2 & k::
if GetKeyState("control") = 0
{
	if GetKeyState("alt") = 0
		Send, {Up}
	else
		Send, !^{Up}
	Return
}

2 & l::
if GetKeyState("control") = 0
{
	if GetKeyState("alt") = 0
		Send, {Right}
	else
		Send, +^{Right}
	Return
}

2 & i::
if GetKeyState("control") = 0
{
	if GetKeyState("alt") = 0
		Send, {Home}
	else
		Send, +{Home}
	Return
}

2 & o::
if GetKeyState("control") = 0
{
	if GetKeyState("alt") = 0
		Send, {End}
	else
		Send, +{End}
	Return
}
;map CapsLock+HJKL into Shift + {left, down, up, right}
2 & n::
Send, +{Left}
Return

2 & m::
Send, +{Down}
Return

2 & ,::
Send, +{Up}
Return

2 & .::
Send, +{Right}
Return

' & a::
Send, ^a
Return

' & s::
Send, ^s
Return

' & c::
Send, ^c
Return

' & v::
Send, ^v
Return

' & x::
Send, ^x
Return

' & b::
Send, ^b
Return

' & w::
Send, ^w
Return

' & r::
Send, ^r
Return

' & t::
Send, ^t
Return

' & d::
Send, ^d
Return

' & f::
Send, ^f
Return

' & z::
Send, ^z
Return

' & q::
Send, ^q
Return

' & 1::
Send, ^1
Return

' & 2::
Send, ^2
Return

' & 3::
Send, ^3
Return

' & 4::
Send, ^4
Return

' & 5::
Send, ^5
Return

'::
Send, '
Return

+'::
Send, "
Return


;transparent window
a := 0
^!j::
winget, T, Transparent, A
if (T == "") {
	WinSet, Transparent, 210, A
}
else {
	a := T-10
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
a := T+10
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
