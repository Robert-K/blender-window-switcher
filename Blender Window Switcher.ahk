#SingleInstance Force
#Persistent
SetTitleMatchMode, RegEx
SetTimer, CheckBlenderHover, 100
return

CheckBlenderHover:
MouseGetPos,,, hoverID
activeWindow := WinActive("ahk_exe blender.exe",, ".*Preferences|.*File View")
hoverWindow := WinExist("ahk_exe blender.exe ahk_id " hoverID)
if(activeWindow and hoverWindow and activeWindow != hoverWindow)
{
	WinActivate, ahk_id %hoverWindow%
}