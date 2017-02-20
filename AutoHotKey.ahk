#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; 防止shift + space 切换全角
+space::
Send {Space}
return


;单击Capslock发送ESC
*CapsLock::
Send {ESC}
Return


;HJKL 方向键
CapsLock & h:: Send {left}
CapsLock & j:: Send {down}
CapsLock & k:: Send {up}
CapsLock & l:: Send {right}


;大写锁定
LShift & Space::
	if GetKeyState("Capslock", "T")
		SetCapsLockState,off	
	else
		SetCapsLockState,on
return
