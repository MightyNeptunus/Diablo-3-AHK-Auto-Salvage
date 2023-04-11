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

;startup
	Gui, 2:New
Gui, +AlwaysOnTop
Gui, -border
Gui, Show, w150 h200,
Gui, Add, Text, x0 w100 vLeftInventory, Top Left of Inventory Location
Gui, Add, Button, x+0 w50 gTopLeft vTopLeftX, Start
Gui, Add, Text, x0 w100 vLeftInventory1,
Gui, Add, Button, x100 y30 w50 vTopLeftY, 0
Gui, Add, Text, x0 w100 vRightInventory, Bottom Right of Inventory Location
Gui, Add, Button, x+0 w50 gBottomRight vBottomRightX, Start
Gui, Add, Text, x0 w100 vRightInventory1,
Gui, Add, Button, x100 y83 w50 vBottomRightY, 0
Gui, Add, Text, x0 w100 vSalvage, Salvage Button Location 
Gui, Add, Button, x+0 w50 gSalvage vSalvageX, Start
Gui, Add, Text, x0 w100 vSalvage1,
Gui, Add, Button, x100 y135 w50 vSalvageY, 0
Gui, Add, Button, x50 y+0 w50 gGUI2Close, Close


Gui, New
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
Gui, Add, Button, Default x+0 w50 gGuiClose, Exit

Gui, Add, Button, Default x+0 w50 gShowParameters, Show
Gui, Show,w150 x0 y0, AlwaysOnTop Window 

Goblins = 0
RainbowGoblins = 0
Hour = 0
Minute = 0
Second = 0
D3Assist := A_ScriptDir . "\D3Assist.ini"
IniRead, TopLeftX, % D3Assist,TopLeftCoords, TopLeftX
IniRead, TopLeftY, % D3Assist,TopLeftCoords, TopLeftY
IniRead, BottomRightX, % D3Assist,BottomRightCoords, BottomRightX
IniRead, BottomRightY, % D3Assist,BottomRightCoords, BottomRightY
IniRead, SalvageX, % D3Assist,SalvageCoords, SalvageX
IniRead, SalvageY, % D3Assist,SalvageCoords, SalvageY


if not (FileExist(D3Assist)) { ; creates the ini file if it does not exist
		FileAppend,
		(
		), % D3Assist ; save your ini file asUTF-16LE
		} Else {
		Gui, 2:Hide
		GuiControl,2:Disable, TopLeftX
		GuiControl,2:Disable, TopLeftY
		GuiControl,2:Disable, BottomRightX
		GuiControl,2:Disable, BottomRightY
		GuiControl,2:Disable, SalvageX
		GuiControl,2:Disable, SalvageY
		GuiControl,2:, TopLeftX, %TopLeftX%
		GuiControl,2:, TopLeftY, %TopLeftY%
		GuiControl,2:, BottomRightX, %BottomRightX%
		GuiControl,2:, BottomRightY, %BottomRightY%
		GuiControl,2:, SalvageX, %SalvageX%
		GuiControl,2:, SalvageY, %SalvageY%
		}

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
						Send {Enter}
						MouseMove, %SalvageX%, %SalvageY%
						Sleep 100
					If ErrorLevel
						Break
				}
Return

ScrapSets:
			If WinExist("Diablo III")
		WinActivate
			Loop {
					PixelSearch, LegLeft, LegRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x15AE20, 2 , Fast
						Click %LegLeft%, %LegRight%
						Send {Enter}
						MouseMove, %SalvageX%, %SalvageY%
						Sleep 100
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

TopLeft:
	TimeLeft = 6
		GuiControl,, LeftInventory, Mouse to top left of
		GuiControl,, LeftInventory1, inventory screen
		Loop{
			TimeLeft -= 1
			GuiControl,, TopLeftX, %TimeLeft%
			GuiControl,, TopLeftY, %TimeLeft%
			Sleep 1000
		} Until TimeLeft = 0
		
		If TimeLeft = 0
			MouseGetPos, TopLeftX, TopLeftY
			GuiControl,, TopLeftX, %TopLeftX%
			GuiControl,, TopLeftY, %TopLeftY%
			GuiControl,2:Disable, TopLeftX
			GuiControl,2:Disable, TopLeftY
			FileAppend,
		(
`n[TopLeftCoords]
TopLeftX = %TopLeftX%
TopLeftY = %TopLeftY%
		), % D3Assist ; save your ini file asUTF-16LE
Return

BottomRight:
	TimeLeft1 = 6
		GuiControl,, RightInventory, Mouse to bottom right of
		GuiControl,, RightInventory1, inventory screen
		Loop{
			TimeLeft1 -= 1
			GuiControl,, BottomRightX, %TimeLeft1%
			GuiControl,, BottomRightY, %TimeLeft1%
			Sleep 1000
		} Until TimeLeft1 = 0
		
		If TimeLeft1 = 0
			MouseGetPos, BottomRightX, BottomRightY
			GuiControl,, BottomRightX, %BottomRightX%
			GuiControl,, BottomRightY, %BottomRightY%
			GuiControl,2:Disable, BottomRightX
			GuiControl,2:Disable, BottomRightY
			FileAppend,
		(
`n[BottomRightCoords]
BottomRightX = %BottomRightX%
BottomRightY = %BottomRightY%
		), % D3Assist ; save your ini file asUTF-16LE
Return

Salvage:
	TimeLeft2 = 6
		GuiControl,, Salvage, Mouse to Salvage Icon
		GuiControl,, Salvage1, location
		Loop{
			TimeLeft2 -= 1
			GuiControl,, SalvageX, %TimeLeft2%
			GuiControl,, SalvageY, %TimeLeft2%
			Sleep 1000
		} Until TimeLeft2 = 0
		
		If TimeLeft2 = 0
			MouseGetPos, SalvageX, SalvageY
			GuiControl,, SalvageX, %SalvageX%
			GuiControl,, SalvageY, %SalvageY%
			GuiControl,2:Disable, SalvageX
			GuiControl,2:Disable, SalvageY
			FileAppend,
		( 
`n[SalvageCoords]
SalvageX = %SalvageX%
SalvageY = %SalvageY%
		), % D3Assist ; save your ini file asUTF-16LE
Return

GUI2Close:
	Gui, 2:Hide
Return

ShowParameters:
	Gui, 2:Show
Return

GuiEscape: 
GuiClose: 
exitapp 