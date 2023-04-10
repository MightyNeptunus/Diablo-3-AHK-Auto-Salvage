SetDefaultMouseSpeed, 0
CoordMode, Mouse, Screen

Hotkey F2, Timer
Hotkey F3, Stop
Hotkey F4, Gob
Hotkey F5, RGob
Hotkey F10, Reload
Hotkey F8, Hide1
Hotkey F9, Show1
Hotkey !l, ScrapLegs
Hotkey !S, ScrapSets

Gui, +AlwaysOnTop
Gui, -border
Gui, Add, Text, x0 0 w150 Center , Diablo 3 Aisstant
;Timer Buttons
Gui, Add, Text, vTimer, Farm Stop Watch
Gui, Add, Text, w150 x+10 vTimerNumbers,  0:0:0
Gui, Add, Button, Default x0 w50 gTimer, Start
Gui, Add, Button, Default x+0 w50 gStop, Stop
Gui, Add, Button, Default x+0 w50 gReset, Reset
;Scrap
Gui, Add, Text, x0 w100, Scrap Legendaries?
Gui, Add, Button, Default x+0 w50 gScrapLegs, Scrap
Gui, Add, Text, x0 w100, Scrap Sets?
Gui, Add, Button, Default x+0 w50 gScrapSets, Scrap
;Goblins
Gui, Add, Text, x0 w80, Gobs
Gui, Add, Text, x+0 w20 vgob, 0 
Gui, Add, Button, Default x+0 w50 gGob, Add
;RainbowGoblins
Gui, Add, Text, x0 w80, RainbowGobs
Gui, Add, Text, x+0 w20 vRgob, 0 
Gui, Add, Button, Default x+0 w50 gRGob, Add
;Show, hide, exit
Gui, Add, Button, Default x0 w50 gHide1, Hide
Gui, Add, Button, Default x+0 w50 gShow1, Show
Gui, Add, Button, Default x+0 w50 gGuiClose, Exit
Gui, Show,w150 x0 y0, AlwaysOnTop Window 

Goblins = 0
RainbowGoblins = 0
Hour = 0
Minute = 0
Second = 0
D3Assist := A_ScriptDir . "\D3Assist.ini"
IniRead, TopLeftX, % D3Assist, InventoryCoords, TopLeftX
IniRead, TopLeftY, % D3Assist, InventoryCoords, TopLeftY
IniRead, BottomRightX, % D3Assist, InventoryCoords, BottomRightX
IniRead, BottomRightY, % D3Assist, InventoryCoords, BottomRightY

if not (FileExist(D3Assist)) { ; creates the ini file if it does not exist
	MsgBox, 16,, Please setup Inventory Coordinates.`nNext windows will be for the Top Left Coordinate.`nAfter That will be for Bottom Right coordinate.`nThis only needs to be done once.`nPress Ok to continue.
	MsgBox, 48,, This will record the coordinate's for the Top Left Inventory Screen.`nAfter OK is press 5 seconds will pass and the coordinate will be recorded
	MsgBox, 48,, Please move cursor over Top Left of inventory please., 5
	MouseGetPos, TopLeftX, TopLeftY
	MsgBox, 48,, This will record the coordinate's for the Bottom Right Inventory Screen.`nAfter OK is press 5 seconds will pass and the coordinate will be recorded
	MsgBox, 48,, Please move cursor over Bottom Right of inventory please., 5
	MouseGetPos, BottomRightX, BottomRightY
		FileAppend,
		(
[InventoryCoords]
TopLeftX = %TopLeftX%
TopLeftY = %TopLeftY%
BottomRightX = %BottomRightX%
BottomRightY = %BottomRightY%
		), % D3Assist ; save your ini file asUTF-16LE
		}
Else

Return

Reload:
	Reload
Return

Timer:
	Settimer, Timer, 1000
		Second += 1
			GuiControl,, TimerNumbers, %Hour%:%Minute%:%Second%
			If Second > 59
				{
					Minute += 1
					Second = 0
				}
				
			If Minute > 59
				{
					Hour += 1
					Minute = 0
				}
Return

Stop:
	Settimer, Timer, off
Return

Reset:
	Settimer, Timer, off
	Hour = 0
	Minute = 0
	Second = 0
	GuiControl,, TimerNumbers, %Hour%:%Minute%:%Second%
Return

ScrapLegs:
	If WinExist("Diablo III")
		WinActivate
			Loop {
					PixelSearch, LegLeft, LegRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x0095EE, 3 , Fast
						Click %LegLeft%, %LegRight%
						Sleep 20
						Send {Enter}
						MouseMove, 224, 385
					If ErrorLevel
						Break
				}
Return

ScrapSets:
			If WinExist("Diablo III")
		WinActivate
			Loop {
					PixelSearch, LegLeft, LegRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x15AE20, 3 , Fast
						Click %LegLeft%, %LegRight%
						Sleep 20
						Send {Enter}
						MouseMove, 224, 385
					If ErrorLevel
						Break
				}
Return

Gob:
	Goblins += 1
	GuiControl,, gob, %Goblins%
Return

RGob:
	RainbowGoblins += 1
	GuiControl,, Rgob, %RainbowGoblins%
Return

Show1:
	Gui, Show
Return

Hide1:
	Gui, Hide
Return

GuiEscape: 
GuiClose: 
exitapp 