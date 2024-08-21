#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force


#IfWinActive ahk_exe java.exe
{
	Pause::ExitApp
	
	; Alt-tab between the currently opened Wakfu windows
	if WinExist("WAKFU")
	{
		XButton1::	; Button on the side of the mouse - change to whatever button you want
		$tab::		; "Tab" button on the keyboard - change to whatever you want
		WinGetClass, CurrentActive, A
		WinGet, Instances, Count, ahk_class %CurrentActive%
		If Instances > 1
				WinActivateBottom, ahk_class %CurrentActive%    	 	; Put the next Window in focus (aka, switch to that window)
		return
	}
}
	
#IfWinActive	; From all windows (including Wakfu)
{
	Pause::ExitApp  ; Exit/Close the script. In this case, when pressing the "Pause/break" key. Change the key to whatever you like.
}