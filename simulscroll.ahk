CoordMode, Mouse, Screen
winax = 350 ; coordinates for first window
winay = 350
winbx = 1010 ; coordinates for second window
winby = 350
anxiety = 8 ; how many scrolls per action

Menu, Tray, NoStandard
Menu, Tray, Add, Enabled, on
Menu, Tray, Add, Disabled, off
Menu, Tray, Add
Menu, Tray, Add, Quit, bye

Menu, Tray, Check, Enabled
state = 1
Menu, Tray, Tip, SimulScroll
Menu, Tray, Icon, SimulRes.dll, 1

WheelDown::
	do = WheelDown
	goto, run
return

WheelUp::
	do = WheelUp
	goto, run
return

on:
Menu, Tray, Check, Enabled
Menu, Tray, Uncheck, Disabled
Menu, Tray, Icon, SimulRes.dll, 1
state = 1
return

off:
Menu, Tray, Uncheck, Enabled
Menu, Tray, Check, Disabled
Menu, Tray, Icon, SimulRes.dll, 2
state = 0
return

run:
if (state = 1)
	{
		MouseGetPos, xbak, ybak
		MouseMove, %winax%, %winay%, 0
		Loop, %anxiety%
			Send {%do%}
		MouseMove, %winbx%, %winby%, 0
		Loop, %anxiety%
			Send {%do%}
		MouseMove, %xbak%, %ybak%, 0
	}
else
	Send {%do%}
return

bye:
ExitApp