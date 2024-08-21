#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force


;If active window is an instance of Dofus
#IfWinActive ahk_exe Dofus.exe
{
	Pause::ExitApp

	;----------------------------------------
	; Cycle to previous Window
	XButton1::	; when pressing 2nd side mouse button (down / back)
	$tab::		; when pressing Tab key
	WinGetClass, CurrentActive, A
	WinGet, Instances, Count, ahk_class %CurrentActive%
	If Instances > 1
			WinActivateBottom, ahk_class %CurrentActive%
	return
	
}
	
#IfWinActive	; All windows (including Dofus)
{
	Pause::ExitApp  ; Exit script with Pause/break key
}