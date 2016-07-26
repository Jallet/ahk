;#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;Switch off CapsLock
SetCapsLockState, AlwaysOff
;map CapsLock to Esc
CapsLock::
Send,{Shift}
Return

Shift::Ctrl
Ctrl::Shift

#IfWinActive ahk_class VanDyke Software - SecureCRT
CapsLock::
	SendInput ^a
Return
#IfWinActive

#IfWinActive ahk_class Xshell::MainFrame_0
CapsLock::
	SendInput ^a
Return
#IfWinActive
#IfWinActive ahk_class Xshell::MainFrame_1
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

CapsLock & `::
Send, {~}
Return

CapsLock & 1::
Send, {!}
Return

CapsLock & 2::
Send, {@}
Return

CapsLock & 3::
Send, {#}
Return

CapsLock & 4::
Send, {$}
Return

CapsLock & 5::
Send, `%
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

CapsLock & q::
Send, Q
Return

CapsLock & w::
Send, W
Return

CapsLock & e::
Send, E
Return

CapsLock & r::
Send, R
Return

CapsLock & t::
Send, T
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
Send, {{}
Return

CapsLock & ]::
Send, {}}
Return

CapsLock & a::
Send, A
Return

CapsLock & s::
Send, S
Return

CapsLock & d::
Send, D
Return

CapsLock & f::
Send, F
Return

CapsLock & g::
Send, G
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

CapsLock & z::
Send, Z
Return

CapsLock & x::
Send, X
Return

CapsLock & c::
Send, C
Return

CapsLock & v::
Send, V
Return

CapsLock & b::
Send, B
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

;map CapsLock+hjkl into left, down, up, right, the same as vim style
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

v & y::
  Send, {PgDn}
Return

v & p::
  Send, {PgUp}
Return

;map d<letter> into d<letter>
v::
Send, v
Return

^v::
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

; v & y::
; Send, vy
; Return

v & u::
Send, vu
Return

v & i::
Send, vi
Return

v & o::
Send, vo
Return

; v & p::
; Send, vp
; Return

v & [::
Send, v{{}
Return

v & ]::
Send, v{}}
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
CapsLock & Backspace::
Send, {Del}
Return

;map Windoows+jk to Windows+Down,Up
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
;map #[ to mouse click
#[::
    Click
Return
;map Windows+w to Alt+F4
#W::
Send, !{F4}
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
#IfWinExist ahk_class SessionWindow
WinActivate ahk_class SessionWindow
#IfWinExist
Return

;map Ctrl+Win+HL to Ctrl+Win+{Left, Right}
!h::
Send, ^#{Left}
Return
!l::
Send, ^#{Right}
Return

!v::
Send, ^v
Return


;;;;;;stack;;;;;;Stack for push and pop maps, this block must be an the end of the file
:C?*:listkeys::list-keys -t vi-copy
:C?*:runrn::nohup src/solve_rn_cifar.sh > log/ResNet.log &
:C?*:rundy::nohup src/solve_dyresnet.py > log/DyResNet.log &
:C?*:runpn::nohup src/solve_pn_cifar.sh > log/PlainNet.log &
:C?*:showrntrainloss::./src/show_figure.py results/loss/ResNet-cifar/ResNet-cifar-train-loss &
:C?*:showpntrainloss::./src/show_figure.py results/loss/PlainNet-cifar/PlainNet-cifar-train-loss &
:C?*:showrntestacc::./src/show_figure.py results/accuracy/ResNet-cifar/ResNet-cifar-val-acc &
:C?*:showpntestacc::./src/show_figure.py results/accuracy/PlainNet-cifar/PlainNet-cifar-val-acc &
:C?*:topj::top -u liangjiang
:C?*:opennet::vim prototxt/DyResNet/ResNet-cifar.prototxt
:C?*:opensolver::vim prototxt/DyResNet/ResNet-cifar-solver.prototxt
:C?*:showdytestacc::./src/show_figure.py results/accuracy/DyResNet-cifar/DyResNet-cifar-acc-val &
:C?*:showdytrainloss::./src/show_figure.py results/loss/DyResNet-cifar/DyResNet-cifar-loss-train &
