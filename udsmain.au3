#cs ----------------------------------------------------------------------------

	AutoIt Version: 3.3.10.2
	Author:         xstma 

	Script Function:
	A GUI Port Of UDS (copied the base code from another project hence the bad naming of things)

#ce ----------------------------------------------------------------------------

#include <Array.au3>
#include <File.au3>
#include <FileConstants.au3>
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>
#include <SliderConstants.au3>
#include <ProgressConstants.au3>
#include <InetConstants.au3>
#include <String.au3>
#include <WindowsConstants.au3>
#include <Constants.au3>
#include <StaticConstants.au3>
#include <ColorConstantS.au3>
#include <FontConstants.au3>
#include "ColorConstants.au3"

Global $optUpdate, $aIsMajor, $LatestVersionDev, $aVersionActual, $aCurVersion, $isMajor, $updateStat, $folderpath, $nvar, $cuicountdown, $rndvarprog, $radio4, $radio3, $progress1, $slidecheckbox, $readslide, $slider1, $button2, $label14, $rndnumbinput, $min, $max, $rndnumb, $message, $ms, $msgs, $spamnumb, $input1, $input2, $input3, $button1, $input4, $label1, $label2, $label3, $radio1, $radio2, $msgstosend, $spammeduser, $label5, $label6, $label7, $label8, $suicidalscript, $label10, $label11, $label12, $label13, $label14, $label15, $label16

spmGui()

$ScriptVersion = "3.07"

Func spmGui()
	ConsoleWrite('@@ (34) :(' & @MIN & ':' & @SEC & ') spmGui()' & @CR) ;### Function Trace
	#Region ### START Koda GUI section ### Form=
	$form1_1_1 = GUICreate("xstmaSpamBot", 260, 250, 900, 400, BitOr($WS_BORDER, $WS_POPUP), BitOR($WS_EX_TOPMOST, $WS_EX_TOOLWINDOW))
	$button1 = GUICtrlCreateButton("PULL", 150, 50, 100, 40)
	    GUICtrlSetBKColor(-1,0x4250f4)
     	GUICtrlSetColor(-1,0xFFFFFF)
	$button55 = GUICtrlCreateButton("PUSH", 10, 50, 100, 40)
	    GUICtrlSetBKColor(-1,0x4250f4)
     	GUICtrlSetColor(-1,0xFFFFFF)
	$button99 = GUICtrlCreateButton("QUIT", 80, 200, 100, 40)
	    GUICtrlSetBKColor(-1,0x4250f4)
     	GUICtrlSetColor(-1,0xFFFFFF)
	$progress1 = GUICtrlCreateProgress(10, 8, 240, 25)
	GUISetState(@SW_SHOW)
	#EndRegion ### END Koda GUI section ###
	GUISetState(@SW_SHOW)
	GUISetBkColor(0xFFFFFF)
	GUICtrlSetFont($Button99, 14, 200, 0, "ABeeZee", 1)
	GUICtrlSetFont($Button1, 14, 200, 0, "ABeeZee", 1)
	GUICtrlSetFont($Button55, 14, 200, 0, "ABeeZee", 1)
	
	While 1
		$msg = GUIGetMsg()
		If $msg = $gui_event_close Then ExitLoop
		If $msg = $button1 Then button1()
		If $msg = $button99 Then button99()
		If $msg = $button55 Then button55()
WEnd
EndFunc   ;==>spmGui

Func button99()
	ConsoleWrite('@@ (106) :(' & @MIN & ':' & @SEC & ') button99()' & @CR) ;### Function Trace
	GUISetState(@SW_DISABLE)
	If GUICtrlRead($radio1) = $gui_checked Then
		HotKeySet("{UP}", "kill")
		kill()
	Else
		HotKeySet("{UP}", "kill")
		kill()
	EndIf
EndFunc

Func button55()
	ConsoleWrite('@@ (106) :(' & @MIN & ':' & @SEC & ') button99()' & @CR) ;### Function Trace
	GUISetState(@SW_DISABLE)
	If GUICtrlRead($radio1) = $gui_checked Then
		HotKeySet("{UP}", "kill")
		auth()
	Else
		HotKeySet("{UP}", "kill")
		auth()
	EndIf
EndFunc

Func button1()
	ConsoleWrite('@@ (106) :(' & @MIN & ':' & @SEC & ') button1()' & @CR) ;### Function Trace
	GUISetState(@SW_DISABLE)
	If GUICtrlRead($radio1) = $gui_checked Then
		HotKeySet("{UP}", "EmergencyStop")
		file()
	Else
		HotKeySet("{UP}", "EmergencyStop")
		file()
	EndIf
EndFunc   ;==>button1


Func emergencyStop()
	ConsoleWrite('@@ (138) :(' & @MIN & ':' & @SEC & ') emergencyStop()' & @CR) ;### Function Trace
	Opt("SendKeyDelay", 0)
	Opt("SendKeyDownDelay", 0)
	Sleep(50)
	Send(" ")
	Send("{ENTER}")
	Sleep(30)
	Run("udsmain.exe", "", "")
	Exit
EndFunc   ;==>emergencyStop

Func kill()
	ConsoleWrite('@@ (138) :(' & @MIN & ':' & @SEC & ') kill()' & @CR) ;### Function Trace
	Opt("SendKeyDelay", 0)
	Opt("SendKeyDownDelay", 0)
	Sleep(50)
	Send(" ")
	Send("{ENTER}")
	Sleep(30)
	Exit
EndFunc 

func file()
	custSpam()
EndFunc

Func custSpam()
	ConsoleWrite('@@ (150) :(' & @MIN & ':' & @SEC & ') custSpam()' & @CR) ;### Function Trace
	GUICtrlSetData($progress1, 50)
	$rndvarprog = False
	RunWait("udspull.exe")
	emergencyStop() 

EndFunc   ;==>custSpam

Func auth()
	ConsoleWrite('@@ (150) :(' & @MIN & ':' & @SEC & ') custSpam()' & @CR) ;### Function Trace
	GUICtrlSetData($progress1, 0)
	$rndvarprog = False
	RunWait("udspush.exe")
	emergencyStop()
EndFunc  
