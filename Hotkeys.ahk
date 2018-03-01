;#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

MButton::
  SendInput ^+p
Return

;Switch off CapsLock
SetCapsLockState, AlwaysOff
CapsLock::Tab
;map CapsLock to Esc
;CapsLock::
;  Send, {Shift}
;Return

;^CapsLock::
;Return
;+CapsLock::
;Return
;!CapsLock::
;Return
;#CapsLock::
;Return
;CapsLock & Tab::
;Return

Tab::
  GetKeyState, ctrl_state, Control, P
  GetKeyState, shift_state, Shift, P
  GetKeyState, alt_state, Alt, P
  a="ctrl_state: "
  b="shift_state: "
  c="alt_state: "
  if ctrl_state = D
  {
    if shift_state = D
    {
      Send, +^{Tab}
    }
    else
    {
      Send, ^{Tab}
    }
  }
  else if alt_state = D
  {
    if shift_state = D
    {
      Send, +!{Tab}
    }
    else
    {
      Send, !{Tab}
    }
  }
  else if WinActive("ahk_class VanDyke Software - SecureCRT") or WinActive("ahk_class PuTTY") or WinActive("ahk_class Xshell\:\:MainFrame_0") or WinActive("ahk_class ConsoleWindowClass")
  {
    Send, ^a
  }
  else
  {
    Send, {shift}
  }
Return

Alt::Ctrl
Ctrl::Alt

+;::
Send, {:}
Return

`;::
Send, {;}
Return

;map jf into Enter
:C*?:fm::
Send, {enter}
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

`; & `::
Send, {~}
Return

`; & 1::
Send, {!}
Return

`; & 2::
Send, {@}
Return

`; & 3::
Send, {#}
Return

`; & 4::
Send, {$}
Return

`; & 5::
Send, `%
Return

`; & 6::
Send, {^}
Return

`; & 7::
Send, &
Return

`; & 8::
Send, *
Return

`; & 9::
Send, (
Return

`; & 0::
Send, )
Return

`; & -::
Send, _
Return

`; & =::
Send, {+}
Return

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

`; & y::
Send, Y
Return

`; & u::
Send, U
Return

`; & i::
Send, I
Return

`; & o::
Send, O
Return

`; & p::
Send, P
Return

`; & [::
Send, {{}
Return

`; & ]::
Send, {}}
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

`; & h::
Send, H
Return

`; & j::
Send, J
Return

`; & k::
Send, K
Return

`; & l::
Send, L
Return

`; & `;::
Send, :
Return

`; & '::
Send, "
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

`; & n::
Send, N
Return

`; & m::
Send, M
Return

`; & ,::
Send, <
Return

`; & .::
Send, >
Return

`; & /::
Send, ?
Return

`; & \::
Send, |
Return

Tab & `::
Send, {~}
Return

Tab & 1::
Send, {!}
Return

Tab & 2::
Send, {@}
Return

Tab & 3::
Send, {#}
Return

Tab & 4::
Send, {$}
Return

Tab & 5::
Send, `%
Return

Tab & 6::
Send, {^}
Return

Tab & 7::
Send, &
Return

Tab & 8::
Send, *
Return

Tab & 9::
Send, (
Return

Tab & 0::
Send, )
Return

Tab & -::
Send, _
Return

Tab & =::
Send, {+}
Return

Tab & q::
Send, Q
Return

Tab & w::
Send, W
Return

Tab & e::
Send, E
Return

Tab & r::
Send, R
Return

Tab & t::
Send, T
Return

Tab & y::
Send, Y
Return

Tab & u::
Send, U
Return

Tab & i::
Send, I
Return

Tab & o::
Send, O
Return

Tab & p::
Send, P
Return

Tab & [::
Send, {{}
Return

Tab & ]::
Send, {}}
Return

Tab & a::
Send, A
Return

Tab & s::
Send, S
Return

Tab & d::
Send, D
Return

Tab & f::
Send, F
Return

Tab & g::
Send, G
Return

Tab & h::
Send, H
Return

Tab & j::
Send, J
Return

Tab & k::
Send, K
Return

Tab & l::
Send, L
Return

Tab & `;::
Send, :
Return

Tab & '::
Send, "
Return

Tab & z::
Send, Z
Return

Tab & x::
Send, X
Return

Tab & c::
Send, C
Return

Tab & v::
Send, V
Return

Tab & b::
Send, B
Return

Tab & n::
Send, N
Return

Tab & m::
Send, M
Return

Tab & ,::
Send, <
Return

Tab & .::
Send, >
Return

Tab & /::
Send, ?
Return

Tab & \::
Send, |
Return

;map v+hjkl into left, down, up, right, the same as vim style
v & h::
if GetKeyState("control") = 0
{
	if GetKeyState("alt") = 0
		Send, {Left}
	else
		Send, !^{Left}
	Return
}

v & j::
if GetKeyState("control") = 0
{
	if GetKeyState("alt") = 0
		Send, {Down}
	else
		Send, !^{Down}
	Return
}

v & k::
if GetKeyState("control") = 0
{
	if GetKeyState("alt") = 0
		Send, {Up}
	else
		Send, !^{Up}
	Return
}

v & l::
if GetKeyState("control") = 0
{
	if GetKeyState("alt") = 0
		Send, {Right}
	else
		Send, +^{Right}
	Return
}

v & n::
if GetKeyState("control") = 0
{
	if GetKeyState("alt") = 0
		Send, {Home}
	else
		Send, +{Home}
	Return
}

v & m::
if GetKeyState("control") = 0
{
	if GetKeyState("alt") = 0
		Send, {End}
	else
		Send, +{End}
	Return
}

v & u::
  Send, {Backspace}
Return

v & p::
  Send, {Del}
Return

v & y::
  Send, {Tab}
Return

`; & Tab::AltTab

;map d<letter> into d<letter>
v::
GetKeyState, alt_state, Alt, P
if alt_state = D
{
  Send, ^v
}
else
{
Send, v
}
Return

!v::
MsgBox, "Alt v"
Send, ^v
Return

v & `::
Send, v`
Return

v & 1::
Send, v1
Return

v & 2::
Send, v2
Return

v & 3::
Send, v3
Return

v & 4::
Send, v4
Return

v & 5::
Send, v5
Return

v & 6::
Send, v6
Return

v & 7::
Send, v7
Return

v & 8::
Send, v8
Return

v & 9::
Send, v9
Return

v & 0::
Send, v0
Return

v & -::
Send, v-
Return

v & =::
Send, v=
Return

v & q::
Send, vq
Return

v & w::
Send, vw
Return

v & e::
Send, ve
Return

v & r::
Send, vr
Return

v & t::
Send, vt
Return

v & i::
Send, vi
Return

v & o::
Send, vo
Return

v & a::
Send, va
Return

v & s::
Send, vs
Return

v & d::
Send, vd
Return

v & f::
Send, vf
Return

v & g::
Send, vg
Return

v & `;::
Send, ^{Left}
Return 

v & '::
Send, ^{Right}
Return 

v & z::
Send, vz
Return

v & x::
Send, vx
Return

v & c::
Send, vc
Return

v & b::
Send, vb
Return

v & ,::
Send, +{Left}
Return

v & .::
Send, +{Right}
Return

v & [::
  Send, +{Up}
Return

v & ]::
  Send, +{Down}
Return 

v & /::
Send, v/
Return

v & Space::
Send, v{Space}
Return

;map '+<letter> into Ctrl-letter
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
' & Tab::
  Send, ^{Tab}
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
Tab & Backspace::
Send, {Del}
Return

;map Windoows+yo to Windows+Down,Up
#y::
Send, #{Down}
Return

#o::
Send, #{Up}
Return

;map Windows+jk to Mouse wheel down up
#j::
Loop, 5
    MouseClick, WheelDown
Return

#k::
Loop, 5
    MouseClick, WheelUp
Return

;map Windows+,. to move widow to the left or right screen
#,::
Send, #+{Left}
Return

#.::
Send, #+{Right}
Return

;map #[ to mouse click
#[::
    Click
Return
;map Windows+w to Alt+F4
#W::
Send, !{F4}
Return

#-::
  Run https://translate.google.cn
Return

;map Ctrl+Alt+b to open babun
babun_path=C:/Users/Liang\ Jiang/.babun/cygwin/usr/local/bin/babun
^!b::
#IfWinExist ahk_class mintty
WinActivate ahk_class mintty
#IfWinExist
Return

;map Ctrl+Win+Y to open Yixin
!y::
#IfWinExist ahk_class SessionBoxWnd
WinActivate ahk_class SessionBoxWnd
#IfWinExist
Return

;map Ctrl+Win+HL to Ctrl+Win+{Left, Right}
!h::
Send, ^#{Left}
Return
!l::
Send, ^#{Right}
Return

;Alt & v::
;Send, ^v
;Return

lock_id= -1
^,::
  WinGet, lock_id, ID, A 
Return

^.::
  if (lock_id = -1) {
    MsgBox, "No window is locked"
  }
  else {
    WinActivate ahk_id %lock_id%
  }
Return


;;;;;;stack;;;;;;Stack for push and pop maps, this block must be an the end of the file
:C?*:listkeys::list-keys -t vi-copy
