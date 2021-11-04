#NoEnv
#SingleInstance, Force
#InstallKeybdHook
#MenuMaskKey vkE8

>#,::#Left
>#.::#Right
#-::Send, {ASC 0151}
+#-::Send, {ASC 0150}

#If !ModifierPressed()

#z::AppsKey
#F1::Volume_Mute
#F2::Volume_Down
#F3::Volume_Up
#F4::Media_Prev
#F5::Media_Play_Pause
#F6::Media_Next
#F10::Send {PrintScreen}
#F11::ScrollLock
#F12::CtrlBreak
#Delete::Insert
#BackSpace::Run Calc.exe
>#Enter::Media_Play_Pause
>#Left::Media_Prev
>#Up::Volume_Up
>#Right::Media_Next
>#Down::Volume_Down

#If

#IfWinActive ahk_exe DiscordCanary.exe
F1::^k
#IfWinActive ahk_exe msedge.exe
F1::^k
#IfWinActive

ModifierPressed() {
	Return GetKeyState("Ctrl", "P")
	|| GetKeyState("Alt", "P")
	|| GetKeyState("Shift", "P")
}
