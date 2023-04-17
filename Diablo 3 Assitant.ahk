SetDefaultMouseSpeed, 0
CoordMode, Mouse, Screen

Hotkey F2, Timer
Hotkey F3, Stop
Hotkey F4, GobAdd
Hotkey F5, RGobAdd
Hotkey F10, Reload
Hotkey F8, HideMain
Hotkey F9, ShowMain
Hotkey !l, ScrapLegs
Hotkey !S, ScrapSets
Hotkey +F4, GobSubtract
Hotkey +F5, RGobSubtract
Hotkey F12, ShowStartUp

;startup
Gui, StartUp:New
Gui, +AlwaysOnTop
Gui, -Border
Gui, Add, Text, x0 w170 vLeftInventory, Top Left of Inventory Location
Gui, Add, Button, x+0 w50 gTopLeft vTopLeftX, Start 				;Starts script for Top Left Corner of inventory Screen
Gui, Add, Button, x+0 w50 Disabled vTopLeftY, 0
Gui, Add, Text, x0 w170 vRightInventory, Bottom Right of Inventory Location
Gui, Add, Button, x+0 w50 gBottomRight vBottomRightX, Start			;Starts script for Bottom Right Corner of inventory Screen
Gui, Add, Button, x+0 w50 Disabled vBottomRightY, 0
Gui, Add, Text, x0 w170 vSalvage, Salvage Button Location 
Gui, Add, Button, x+0 w50 gSalvage vSalvageX, Start 				;Starts script for Artisan salvage button location
Gui, Add, Button, x+0 w50 Disabled w50 vSalvageY, 0
Gui, Add, Text, x0 w170 vCubeTransmuteButton, Cube Transmute Button Location 
Gui, Add, Button, x+0 w50 gCubeTransmuteButton vCubeTransmuteButtonX, Start 				;Starts script for Cube Transmute Location
Gui, Add, Button, x+0 w50 w50 Disabled vCubeTransmuteButtonY, 0
Gui, Add, Text, x0 w170 vCubeFillButton, Cube Fill Button Location 
Gui, Add, Button, x+0 w50 gCubeFillButton vCubeFillButtonX, Start 				;Starts script for Cube Next Button Location
Gui, Add, Button, x+0 w50 w50 Disabled vCubeFillButtonY, 0
Gui, Add, Button, x110 y+0 w50 gCloseStartUp, Close 				;Closes startup

Gui, Main:New
Gui, +AlwaysOnTop -Border
Gui, Add, Text, x0 0 w168 Center, Diablo 3 Asstant					;Title
Gui, Add, Tab, x0 w173 h20 vMenu1 gMenu1, Main|Stats|Cube|Help|		;Tabs
Gui, Tab, Main
Gui, Add, Text, x0 w100 vTimer, Farm Stop Watch 					
Gui, Add, Text, x+0 w66 Left vTimerNumbers,  0:0:0 
Gui, Add, Button, x0 w56 gTimer, Start								;Starts Timer
Gui, Add, Button, x+0 w56 gStop, Stop 								;Stops Timer
Gui, Add, Button, x+0 w56 gReset, Reset 							;Resets Timer
Gui, Add, Text, x0 w80, Goblins
Gui, Add, Text, x+0 w31 vgob, 0 									;Shows Number of Gobs Encountered
Gui, Add, Button, x+0 y+-18 w28 gGobAdd, + 								;Adds Goblin
Gui, Add, Button, x+0 w28 gGobSubtract, - 							;Subtracts Goblins
Gui, Add, Text, x0 w80, RainbowGobs
Gui, Add, Text, x+0 w31 vRgob, 0 									;Number of Rainbow Goblins Killed
Gui, Add, Button, x+0 y+-18 w28 gRGobAdd, + 								;Add Rainbow Goblins
Gui, Add, Button, x+0 w28 gRGobSubtract, -							;Subtracts From Rainbow Gobs Killed
Gui, Add, Button, x56 y+0 w56 gCloseMain, Exit 						;Closes Entire Script

Gui, Tab, Stats
Gui, Add, Text, x0 y+0 w125, Goblins Per Minute
Gui, Add, Text, x+10 w50 h15 vGobHour, 0 							;Gobs per Minute
Gui, Add, Text, x0 y+0 w125, Rainbow Goblins Per Hour 
Gui, Add, Text, x+10 w50 h15 vRGobHour, 0 							;Gobs Per Hour
Gui, Add, Button, x56 y+0 w56 gCloseMain, Exit 						;Closes Entire Script


Gui, Tab, Cube
Gui, Add, Text, x0 y+0 w168 Center vCubePageName, Hope of Cain			;Dynamic name in cube also used for Rare rarities can be used in the conversion process
Gui, Add, Checkbox, x0 y+0 w168 h27 +Hidden vCommonRarity, Use Common Item As Conversion?			;Makes it so Common rarities can be selected in converting process
Gui, Add, Checkbox, x0 y+0 w168 h27 +Hidden vMagicRarity, Use Magic Item As Conversion?			;Makes it so Magic rarities can be selected in converting process
Gui, Add, Checkbox, x0 y+0 w168 h27 vRarity, Use Rare Item As Conversion?
Gui, Add, Text, y+0 w168 Center, How many items in inventory?
Gui, Add, Slider, Range1-32 ToolTip w168 vRepeatTime,			;Slider for selecting Repeats
Gui, Add, DropDownList, w168 vGemSelect +Hidden, Select Gem Type||Amethyst|Diamond|Emerald|Ruby|Topaz|
Gui, Add, DropDownList, w168 vDustSelect +Hidden, Select Dust Type||Amethyst Dust|Diamond Dust|Emerald Dust|Ruby Dust|Topaz Dust|
Gui, Add, Button, x50 y+0 Disabled vPrevious gPrevious, <<
Gui, Add, Text, x+0 y+-18 vPages, Page 3
Gui, Add, Button, x+0 y+-18 vNext gNext, >>
Gui, Add, Button, x50 y+0 w82 gTransmute, Transmute
Gui, Add, Button, x63 y+0 w56 gCloseMain, Exit 						;Closes Entire Script

Gui, Tab, Help														;Shows HotKeys
Gui, Add, Button, x+0 Disabled, F2
Gui, Add, Button, y+0 Disabled, F3
Gui, Add, Button, y+0 Disabled, F4
Gui, Add, Button, y+0 Disabled, Shift +F4
Gui, Add, Button, y+0 Disabled, F5
Gui, Add, Button, y+0 Disabled, Shift + F5
Gui, Add, Button, y+0 Disabled, F8
Gui, Add, Button, y+0 Disabled, F9
Gui, Add, Button, y+0 Disabled, Alt + L
Gui, Add, Button, y+0 Disabled, Alt + S
Gui, Add, Text, x+-15 y+-225, Start Timer
Gui, Add, Text, y+10, Stop Timer
Gui, Add, Text, y+10, Add Goblin
Gui, Add, Text, x+-20 y+10, Remove Goblin
Gui, Add, Text, x29 y+10, Add Rainbow Goblin
Gui, Add, Text, x64 y+10, Subtract RainbowGob
Gui, Add, Text, x29 y+10, Hide Gui
Gui, Add, Text, x29 y+10, Show Gui
Gui, Add, Text, x48 y+10, Scrap Legendaries
Gui, Add, Text, x49 y+10, Scrap Items
Gui, Add, Button, x63 y+0 w56 gCloseMain, Exit 						;Closes Entire Script

Gui, Show, x0 y0 AutoSize, Diablo 3 Assistant
		
Goblins = 0
RainbowGoblins = 0
Hour = 0
Minute = 0
Second = 0
GobPerMin = 0
PageNumber = 2
D3AssistVariables := A_ScriptDir . "\D3AssistVariables.ini"
IniRead, TopLeftX, % D3AssistVariables,TopLeftLocation, TopLeftX			;All these Iniread reads all variables from file
IniRead, TopLeftY, % D3AssistVariables,TopLeftLocation, TopLeftY
IniRead, BottomRightX, % D3AssistVariables,BottomRightLocation, BottomRightX
IniRead, BottomRightY, % D3AssistVariables,BottomRightLocation, BottomRightY
IniRead, SalvageX, % D3AssistVariables,SalvageLocation, SalvageX
IniRead, SalvageY, % D3AssistVariables,SalvageLocation, SalvageY
IniRead, CubeTransmuteButtonX, % D3AssistVariables,CubeTransmuteButton, CubeTransmuteButtonX
IniRead, CubeTransmuteButtonY, % D3AssistVariables,CubeTransmuteButton, CubeTransmuteButtonY
IniRead, CubeFillButtonX, % D3AssistVariables,CubeFillButton, CubeFillButtonX
IniRead, CubeFillButtonY, % D3AssistVariables,CubeFillButton, CubeFillButtonY

if not (FileExist(D3AssistVariables)) {			;Handles If StartUp should loand or not
		Gui, StartUp:Show							
		FileAppend,												
		(		
		), % D3AssistVariables 											
		} Else {			
			GuiControl,StartUp:Disable, TopLeftX										
			GuiControl,StartUp:Disable, BottomRightX
			GuiControl,StartUp:Disable, SalvageX
			GuiControl,StartUp:Disable, CubeTransmuteButtonX
			GuiControl,StartUp:Disable, CubeFillButtonX
			GuiControl,StartUp:, TopLeftX, %TopLeftX%
			GuiControl,StartUp:, TopLeftY, %TopLeftY%
			GuiControl,StartUp:, BottomRightX, %BottomRightX%
			GuiControl,StartUp:, BottomRightY, %BottomRightY%
			GuiControl,StartUp:, SalvageX, %SalvageX%
			GuiControl,StartUp:, SalvageY, %SalvageY%
			GuiControl,StartUp:, CubeTransmuteButtonX, %CubeTransmuteButtonX%
			GuiControl,StartUp:, CubeTransmuteButtonY, %CubeTransmuteButtonY%
			GuiControl,StartUp:, CubeFillButtonX, %CubeFillButtonX%
			GuiControl,StartUp:, CubeFillButtonY, %CubeFillButtonY%
		}

Return

Reload:
	Reload
Return

Timer:			;Handles Timer
	Settimer, Timer, 1000
		Second += 1
			GuiControl,Main:, TimerNumbers, %Hour%:%Minute%:%Second%
			If Second > 59
				{
					Minute += 1
					GobPerMin += 1
					Second = 0
				}
				
			If Minute > 59
				{
					Hour += 1
					Minute = 0
				}
	If GobPerMin > 0			;Handles Gob Per Min Calculation
		GobHour := Round(Goblins/GobPerMin, 2)
		GuiControl,Main:, GobHour, %GobHour%
	If Not GobPerMin > 0			;Handles Gob Per Min if less than 1
		GobHour := Round(Goblins/1, 2)
		GuiControl,Main:, GobHour, %GobHour%
	If Hour > 0
		RGobHour := Round(RainbowGoblins/Hour, 2)			;Handles Rainbow Gobs Per Hour Calculation
		GuiControl,Main:, RGobHour, %RGobHour%
	If Not Hour > 0
		RGobHour := Round(RainbowGoblins/1, 2)			;Handles Rainbow Gobs Per Hour if less than 1
		GuiControl,Main:, RGobHour, %RGobHour%
Return

Stop:			;Stops Timer
	Settimer, Timer, off
Return

Reset:			;Resets Timer
	Settimer, Timer, off
	Hour = 0
	Minute = 0
	Second = 0
	GuiControl,, TimerNumbers, %Hour%:%Minute%:%Second%
Return

ScrapLegs:			;Scraps legendaries
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

ScrapSets:			;Scraps Set Items
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

GobAdd:			;Add to Goblin Counter
	Goblins += 1
	GuiControl,Main:, gob, %Goblins%
Return

GobSubtract:			;Subtract from Goblin Counter
	Goblins -= 1
	GuiControl,Main:, gob, %Goblins%
Return

RGobAdd:			;Add to Rainbow Goblin Counter
	RainbowGoblins += 1
	GuiControl,Main:, Rgob, %RainbowGoblins%
Return

RGobSubtract:			;Subtract from Rainbow Goblin Counter
	RainbowGoblins -= 1
	GuiControl,Main:, Rgob, %RainbowGoblins%
Return

HideMain:			;Hides Main Gui
	Gui, Main:Hide
Return

ShowMain:			;Shows Main Gui
	Gui, Main:Show
Return

CloseMain:			;Exits Script
	ExitApp
Return

CloseStartUp:			;Closes StartUp Window
	Gui, StartUp:Hide
Return

ShowStartUp:			;Closes StartUp Window
	Gui, StartUp:Show
Return

TopLeft:			;Handles entire saving top left of inventory location
	TimeLeft = 6
		GuiControl,StartUp:, LeftInventory, Mouse to top left of Inventory
		Loop{
			TimeLeft -= 1
			GuiControl,StartUp:, TopLeftX, %TimeLeft%
			GuiControl,StartUp:, TopLeftY, %TimeLeft%
			Sleep 1000
		} Until TimeLeft = 0
		
		If TimeLeft = 0
			MouseGetPos, TopLeftX, TopLeftY
			GuiControl,StartUp:, TopLeftX, %TopLeftX%
			GuiControl,StartUp:, TopLeftY, %TopLeftY%
			GuiControl,StartUp:Disable, TopLeftX
			GuiControl,StartUp:Disable, TopLeftY
			FileAppend,
		(
`n[TopLeftLocation]
TopLeftX = %TopLeftX%
TopLeftY = %TopLeftY% `n
		), % D3AssistVariables 
Return

BottomRight:			;Handles entire saving bottom right of inventory location
	TimeLeft1 = 6
		GuiControl,StartUp:, RightInventory, Mouse to bottom right of Inventory
		Loop{
			TimeLeft1 -= 1
			GuiControl,StartUp:, BottomRightX, %TimeLeft1%
			GuiControl,StartUp:, BottomRightY, %TimeLeft1%
			Sleep 1000
		} Until TimeLeft1 = 0
		
		If TimeLeft1 = 0
			MouseGetPos, BottomRightX, BottomRightY
			GuiControl,StartUp:, BottomRightX, %BottomRightX%
			GuiControl,StartUp:, BottomRightY, %BottomRightY%
			GuiControl,StartUp:Disable, BottomRightX
			GuiControl,StartUp:Disable, BottomRightY
			FileAppend,
		(
`n[BottomRightLocation]
BottomRightX = %BottomRightX%
BottomRightY = %BottomRightY% `n
		), % D3AssistVariables
Return

Salvage:			;Handles entire saving salvage button location of artisan
	TimeLeft2 = 6
		GuiControl,StartUp:, Salvage, Mouse to Salvage Location
		Loop{
			TimeLeft2 -= 1
			GuiControl,StartUp:, SalvageX, %TimeLeft2%
			GuiControl,StartUp:, SalvageY, %TimeLeft2%
			Sleep 1000
		} Until TimeLeft2 = 0
		
		If TimeLeft2 = 0
			MouseGetPos, SalvageX, SalvageY
			GuiControl,StartUp:, SalvageX, %SalvageX%
			GuiControl,StartUp:, SalvageY, %SalvageY%
			GuiControl,StartUp:Disable, SalvageX
			GuiControl,StartUp:Disable, SalvageY
			FileAppend,
		( 
`n[SalvageLocation]
SalvageX = %SalvageX%
SalvageY = %SalvageY% `n
		), % D3AssistVariables 
Return

CubeTransmuteButton:			;Handles pressing transmute button in cube
	TimeLeft3 = 6
		GuiControl,StartUp:, CubeTransmuteButton, Mouse to Cube Transmute Button Location
		Loop{
			TimeLeft3 -= 1
			GuiControl,StartUp:, CubeTransmuteButtonX, %TimeLeft3%
			GuiControl,StartUp:, CubeTransmuteButtonY, %TimeLeft3%
			Sleep 1000
		} Until TimeLeft3 = 0
		
		If TimeLeft3 = 0
			MouseGetPos, CubeTransmuteButtonX, CubeTransmuteButtonY
			GuiControl,StartUp:, CubeTransmuteButtonX, %CubeTransmuteButtonX%
			GuiControl,StartUp:, CubeTransmuteButtonY, %CubeTransmuteButtonY%
			GuiControl,StartUp:Disable, CubeTransmuteButtonX
			GuiControl,StartUp:Disable, CubeTransmuteButtonY
			FileAppend,
		( 
`n[CubeTransmuteButton]
CubeTransmuteButtonX = %CubeTransmuteButtonX%
CubeTransmuteButtonY = %CubeTransmuteButtonY% `n
		), % D3AssistVariables 
Return

CubeFillButton:			;Handles pressing the fill button in the cube
	TimeLeft6 = 6
		GuiControl,StartUp:, CubeFillButton, Mouse to Cube Fill Button Location
		Loop{
			TimeLeft6 -= 1
			GuiControl,StartUp:, CubeFillButtonX, %TimeLeft6%
			GuiControl,StartUp:, CubeFillButtonY, %TimeLeft6%
			Sleep 1000
		} Until TimeLeft6 = 0
		
		If TimeLeft6 = 0
			MouseGetPos, CubeFillButtonX, CubeFillButtonY
			GuiControl,StartUp:, CubeFillButtonX, %CubeFillButtonX%
			GuiControl,StartUp:, CubeFillButtonY, %CubeFillButtonY%
			GuiControl,StartUp:Disable, CubeFillButtonX
			GuiControl,StartUp:Disable, CubeFillButtonY
			FileAppend,
		( 
`n[CubeFillButton]
CubeFillButtonX = %CubeFillButtonX%
CubeFillButtonY = %CubeFillButtonY% `n
		), % D3AssistVariables 
Return

Menu1:
	Gui, Show, x0 y0 AutoSize, Diablo 3 Assistant
Return

Transmute:			;Handle Gui Transmute button
	GuiControlGet, Rarity
	GuiControlGet, Pages
	GuiControlGet, RepeatTime
	GuiControlGet, GemSelect
	GuiControlGet, DustSelect
	GuiControlGet, CommonRarity
	GuiControlGet, MagicRarity
	
	If  (Rarity = 1 And Pages = "Page 3")
		Loop {	
					PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x083B4A, 2 , Fast
						MouseMove, %RareLeft%, %RareRight%
						Send, {RButton}
						Sleep 100
					Click, %CubeFillButtonX%, %CubeFillButtonY%
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
		} Until RepeatTime = 0
		
	Switch GemSelect {			;Handles Convert Gems
		Case "Amethyst": 
			If	(DustSelect = "Diamond Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft1, RareRight1, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x3741B5, 2 , Fast			;Handles Diamond Dust
						MouseMove, %RareLeft1%, %RareRight1%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft1, GemRight1, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0xED2DAC, 5 , Fast			;Handles Diamond Gems
						MouseMove, %GemLeft1%, %GemRight1%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0
			If	(DustSelect = "Emerald Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x80E135, 2 , Fast			;Handles Emerald Dust
						MouseMove, %RareLeft%, %RareRight%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft, GemRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0xED2DAC, 5 , Fast			;Handles Emerald Gems
						MouseMove, %GemLeft%, %GemRight%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0
			If	(DustSelect = "Ruby Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x1034DA, 2 , Fast			;Handles Ruby Dust
						MouseMove, %RareLeft%, %RareRight%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft, GemRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0xED2DAC, 5 , Fast			;Handles Ruby Gems
						MouseMove, %GemLeft%, %GemRight%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0
			If	(DustSelect = "Topaz Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x1783EE, 2 , Fast			;Handles Topaz Dust
						MouseMove, %RareLeft%, %RareRight%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft, GemRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0xED2DAC, 5 , Fast			;Handles Topaz Gems
						MouseMove, %GemLeft%, %GemRight%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0
		Case "Diamond":
			If	(DustSelect = "Amethyst Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x946392, 2 , Fast			;Handles Amethyst Dust
						MouseMove, %RareLeft%, %RareRight%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft, GemRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0xF6BAA1, 5 , Fast			;Handles Amethyst Gems
						MouseMove, %GemLeft%, %GemRight%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0
			If	(DustSelect = "Emerald Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft2, RareRight2, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x80E135, 2 , Fast			;Handles Emerald Dust
						MouseMove, %RareLeft2%, %RareRight2%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft2, GemRight2, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0xF6BAA1, 5 , Fast			;Handles Emerald Gems
						MouseMove, %GemLeft2%, %GemRight2%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0
			If	(DustSelect = "Ruby Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x1034DA, 2 , Fast			;Handles Ruby Dust
						MouseMove, %RareLeft%, %RareRight%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft, GemRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0xF6BAA1, 5 , Fast			;Handles Ruby Gems
						MouseMove, %GemLeft%, %GemRight%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0
			If	(DustSelect = "Topaz Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x1783EE, 2 , Fast ;Handles Topaz Dust
						MouseMove, %RareLeft%, %RareRight%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft, GemRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0xF6BAA1, 5 , Fast			;Handles Topaz Gems
						MouseMove, %GemLeft%, %GemRight%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0
		Case "Emerald":
			If	(DustSelect = "Amethyst Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x946392, 2 , Fast			;Handles Amethyst Dust
						MouseMove, %RareLeft%, %RareRight%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft, GemRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x60FF64, 5 , Fast			;Handles Amethyst Gems
						MouseMove, %GemLeft%, %GemRight%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0			
			If	(DustSelect = "Diamond Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x3741B5, 2 , Fast			;Handles Diamond Dust
						MouseMove, %RareLeft%, %RareRight%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft, GemRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x60FF64, 4 , Fast			;Handles Diamond Gems
						MouseMove, %GemLeft%, %GemRight%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0
			If	(DustSelect = "Ruby Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x1034DA, 2 , Fast			;Handles Ruby Dust
						MouseMove, %RareLeft%, %RareRight%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft, GemRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x60FF64, 5 , Fast			;Handles Ruby Gems
						MouseMove, %GemLeft%, %GemRight%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0
			If	(DustSelect = "Topaz Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x1783EE, 2 , Fast			;Handles Topaz Dust
						MouseMove, %RareLeft%, %RareRight%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft, GemRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x60FF64, 5 , Fast			;Handles Topaz Gems
						MouseMove, %GemLeft%, %GemRight%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0
		Case "Ruby":
			If	(DustSelect = "Amethyst Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x946392, 2 , Fast			;Handles Amethyst Dust
						MouseMove, %RareLeft%, %RareRight%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft, GemRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x4B56EF, 5 , Fast			;Handles Amethyst Gems
						MouseMove, %GemLeft%, %GemRight%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0			
			If	(DustSelect = "Diamond Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x3741B5, 2 , Fast			;Handles Diamond Dust
						MouseMove, %RareLeft%, %RareRight%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft, GemRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x4B56EF, 5 , Fast			;Handles Diamond Gems
						MouseMove, %GemLeft%, %GemRight%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0
			If	(DustSelect = "Emerald Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x80E135, 2 , Fast			;Handles Emerald Dust
						MouseMove, %RareLeft%, %RareRight%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft, GemRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x4B56EF, 5 , Fast			;Handles Emerald Gems
						MouseMove, %GemLeft%, %GemRight%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0
		If	(DustSelect = "Topaz Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x1783EE, 2 , Fast			;Handles Topaz Dust
						MouseMove, %RareLeft%, %RareRight%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft, GemRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x4B56EF, 5 , Fast			;Handles Topaz Gems
						MouseMove, %GemLeft%, %GemRight%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0
		Case "Topaz":
			If	(DustSelect = "Amethyst Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x946392, 2 , Fast			;Handles Amethyst Dust
						MouseMove, %RareLeft%, %RareRight%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft, GemRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x27B1E9, 5 , Fast			;Handles Amethyst Gems
						MouseMove, %GemLeft%, %GemRight%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0			
			If	(DustSelect = "Diamond Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x3741B5, 2 , Fast			;Handles Diamond Dust
						MouseMove, %RareLeft%, %RareRight%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft, GemRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x27B1E9, 5 , Fast			;Handles Diamond Gems
						MouseMove, %GemLeft%, %GemRight%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0
			If	(DustSelect = "Emerald Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x80E135, 2 , Fast			;Handles Emerald Dust
						MouseMove, %RareLeft%, %RareRight%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft, GemRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x27B1E9, 5 , Fast			;Handles Emerald Gems
						MouseMove, %GemLeft%, %GemRight%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0
			If	(DustSelect = "Ruby Dust" And  Rarity = 1)
				Loop {	
					PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x1034DA, 2 , Fast			;Handles Ruby Dust
						MouseMove, %RareLeft%, %RareRight%
						Send, {RButton}
					Sleep 1000
					PixelSearch, GemLeft, GemRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x4B56EF, 5 , Fast			;Handles Ruby Gems
						MouseMove, %GemLeft%, %GemRight%
						Send, {RButton}
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
						Sleep 2500
					Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
					RepeatTime -= 1
				} Until RepeatTime = 0
	}
	
	If  (Rarity = 1 And Pages = "Page 7")			;Handles rare item conversion
		Loop {	
			PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0xD0D0D0, 1 , Fast
				MouseMove, %RareLeft%, %RareRight%
				Send, {RButton}
				Sleep 100
			Click, %CubeFillButtonX%, %CubeFillButtonY%
			Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
				Sleep 2500
			Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
			RepeatTime -= 1
		} Until RepeatTime = 0
	If  (MagicRarity = 1 And Pages = "Page 7")			;Handles Magic item conversion	
		Loop {	
			PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x311C10, 2 , Fast
				MouseMove, %RareLeft%, %RareRight%
				Send, {RButton}
				Sleep 100
			Click, %CubeFillButtonX%, %CubeFillButtonY%
			Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
				Sleep 2500
			Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
			RepeatTime -= 1
		} Until RepeatTime = 0
	
		If  (CommonRarity = 1 And Pages = "Page 8")			;Handles common item conversion
		Loop {	
			PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0xD0D0D0, 1 , Fast
				MouseMove, %RareLeft%, %RareRight%
				Send, {RButton}
				Sleep 100
			Click, %CubeFillButtonX%, %CubeFillButtonY%
			Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
				Sleep 2500
			Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
			RepeatTime -= 1
		} Until RepeatTime = 0
	If  (Rarity = 1 And Pages = "Page 8")			;Handles rare item conversion
		Loop {	
			PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x083B4A, 2 , Fast
				MouseMove, %RareLeft%, %RareRight%
				Send, {RButton}
				Sleep 100
			Click, %CubeFillButtonX%, %CubeFillButtonY%
			Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
				Sleep 2500
			Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
			RepeatTime -= 1
		} Until RepeatTime = 0
		
	If  (CommonRarity = 1 And Pages = "Page 9")			;Handles common item conversion
		Loop {	
			PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0xD0D0D0, 1 , Fast
				MouseMove, %RareLeft%, %RareRight%
				Send, {RButton}
				Sleep 100
			Click, %CubeFillButtonX%, %CubeFillButtonY%
			Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
				Sleep 2500
			Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
			RepeatTime -= 1
		} Until RepeatTime = 0
	If  (MagicRarity = 1 And Pages = "Page 9")			;Handles Magic item conversion	
		Loop {	
			PixelSearch, RareLeft, RareRight, %TopLeftX%, %TopLeftY%, %BottomRightX%, %BottomRightY%, 0x311C10, 2 , Fast
				MouseMove, %RareLeft%, %RareRight%
				Send, {RButton}
				Sleep 100
			Click, %CubeFillButtonX%, %CubeFillButtonY%
			Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
				Sleep 2500
			Click, %CubeTransmuteButtonX%, %CubeTransmuteButtonY%
			RepeatTime -= 1
		} Until RepeatTime = 0	
	
Return

Next:			;Handles the next button on changing pages
	If PageNumber < 6
		PageNumber += 1
	
		
		Switch PageNumber {
			Case 1: GuiControl,, Pages, Page 3
			Case 2: Goto UpgradeRareItem
			Case 3: Goto ConvertGems
			Case 4: Goto ConvertReusableParts
			Case 5: Goto ConvertArcaneDust
			Case 6: Goto ConvertVeiledCrystal
		}
Return

Previous: ;Handles the previous button on changing pages
		If PageNumber <= 6
			PageNumber -= 1
		Switch PageNumber {
			Case 1: GuiControl,, Pages, Page 3
			Case 2: Goto UpgradeRareItem
			Case 3: Goto ConvertGems
			Case 4: Goto ConvertReusableParts
			Case 5: Goto ConvertArcaneDust
			Case 6: Goto ConvertVeiledCrystal
		}
Return

UpgradeRareItem:			;Handles CubeUpgrade Rare Items
	GuiControl,, Pages, Page 3
	GuiControl,, Rarity, Have Rare Item in Inventory
	GuiControl,, CubePageName, Hope of Cain
	GuiControl, Disabled, Previous
	GuiControl, Hide, GemSelect
	GuiControl, Hide, DustSelect
	GuiControl,, Rarity, 0
	GuiControl,, MagicRarity, 0
	GuiControl,, CommonRarity, 0
Return

ConvertGems:			;Handles CubeConvert Gems
	GuiControl,, Pages, Page 6
	GuiControl,, Rarity, Have Selected Gems in Inventory
	GuiControl,, CubePageName, Darkness of Radament
	GuiControl, Enabled, Previous
	GuiControl, Show, GemSelect
	GuiControl, Show, DustSelect
	GuiControl, Show, Rarity
	GuiControl, Hide, MagicRarity
	GuiControl, Hide, CommonRarity
	GuiControl,, Rarity, 0
	GuiControl,, MagicRarity, 0
	GuiControl,, CommonRarity, 0
	
Return

ConvertReusableParts:			;Handles Cube Convert Reusable Parts
	GuiControl,, Pages, Page 7
	GuiControl,, Rarity, Use Rare Item As Conversion?
	GuiControl,, CubePageName, Pleasure of Iben Fahd
	GuiControl, Hide, CommonRarity
	GuiControl, Show, MagicRarity
	GuiControl, Show, Rarity
	GuiControl, Hide, GemSelect
	GuiControl, Hide, DustSelect
	GuiControl,, Rarity, 0
	GuiControl,, MagicRarity, 0
	GuiControl,, CommonRarity, 0

Return

ConvertArcaneDust:			;Handles Cube Convert Arcane Dust
	GuiControl,, Pages, Page 8
	GuiControl,, CubePageName, Regret of Iben Fahd
	GuiControl, Show, CommonRarity
	GuiControl, Show, Rarity
	GuiControl, Hide, MagicRarity
	GuiControl, Enabled, Next
	GuiControl,, Rarity, 0
	GuiControl,, MagicRarity, 0
	GuiControl,, CommonRarity, 0

Return

ConvertVeiledCrystal:			;Handles Cube Convert Veiled Crystals
	GuiControl,, Pages, Page 9
	GuiControl,, CubePageName, Wrath of Iben Fahd
	GuiControl, Show, MagicRarity
	GuiControl, Show, CommonRarity
	GuiControl, Hide, Rarity
	GuiControl, Disabled, Next
	GuiControl,, Rarity, 0
	GuiControl,, MagicRarity, 0
	GuiControl,, CommonRarity, 0

Return

exitapp 