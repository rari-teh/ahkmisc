Menu, Tray, NoStandard
Menu, Tray, Add, Lenovo mode, dd
Menu, Tray, Add, YouTube mode, yt
Menu, Tray, Add, Break mode, brk
Menu, Tray, Add, Custom mode, custom
Menu, Tray, Add, Disable, off
Menu, Tray, Add
Menu, Tray, Add, Exit, bye

Menu, Tray, Check, Disable
Menu, Tray, Tip, ClearConf
Menu, Tray, Icon, ClearRes.dll, 1
workas = NumpadClear

param = %1%
if (param = "dd" or param = "yt" or param = "brk")
goto, %1%
else
{
count = %0%
if (count != 0)
{
Menu, Tray, Uncheck, Lenovo mode
Menu, Tray, Uncheck, YouTube mode
Menu, Tray, Uncheck, Break mode
Menu, Tray, Check, Custom mode
Menu, Tray, Uncheck, Disable
workas = %1%
Menu, Tray, Icon, ClearRes.dll, 5
}
}

Work:
loop {
NumpadClear::
Send, {%workas%}
return
^NumpadClear::
if (workas = "Break")
{
Send, {CtrlBreak}
}
else
{
Send, {LCtrl down}{%workas%}{LCtrl up}
}
return
^!NumpadClear::
Send, {LCtrl down}{LAlt down}{%workas%}{LAlt up}{LCtrl up}
return
!NumpadClear::
Send, {LAlt down}{%workas%}{LAlt up}
return
+NumpadClear::
Send, {LShift down}{%workas%}{LShift up}
return
^+NumpadClear::
Send, {LCtrl down}{LShift down}{%workas%}{LShift up}{LCtrl up}
return
!+NumpadClear::
Send, {LAlt down}{LShift down}{%workas%}{LShift up}{LAlt up}
return
^!+NumpadClear::
Send, {LCtrl down}{LAlt down}{LShift down}{%workas%}{LShift up}{LAlt up}{LCtrl up}
return
#NumpadClear::
Send, {LWin down}{%workas%}{LWin up}
return
}

dd:
Menu, Tray, Check, Lenovo mode
Menu, Tray, Uncheck, YouTube mode
Menu, Tray, Uncheck, Break mode
Menu, Tray, Uncheck, Custom mode
Menu, Tray, Uncheck, Disable
workas = NumpadDown
Menu, Tray, Icon, ClearRes.dll, 2
goto, work

yt:
Menu, Tray, Uncheck, Lenovo mode
Menu, Tray, Check, YouTube mode
Menu, Tray, Uncheck, Break mode
Menu, Tray, Uncheck, Custom mode
Menu, Tray, Uncheck, Disable
workas = k
Menu, Tray, Icon, ClearRes.dll, 3
goto, work

brk:
Menu, Tray, Uncheck, Lenovo mode
Menu, Tray, Uncheck, YouTube mode
Menu, Tray, Check, Break mode
Menu, Tray, Uncheck, Custom mode
Menu, Tray, Uncheck, Disable
workas := "Break"
Menu, Tray, Icon, ClearRes.dll, 4
goto, work

custom:
Menu, Tray, Uncheck, Lenovo mode
Menu, Tray, Uncheck, YouTube mode
Menu, Tray, Uncheck, Break mode
Menu, Tray, Check, Custom mode
Menu, Tray, Uncheck, Disable
Menu, Tray, Icon, ClearConf.exe, 1
InputBox, workas, ClearConf, NumpadClear::Send`,{what}?
Menu, Tray, Icon, ClearRes.dll, 5
goto, work

off:
Menu, Tray, Uncheck, Lenovo mode
Menu, Tray, Uncheck, YouTube mode
Menu, Tray, Uncheck, Break mode
Menu, Tray, Uncheck, Custom mode
Menu, Tray, Check, Disable
workas = NumpadClear
Menu, Tray, Icon, ClearRes.dll, 1
goto, work

bye:
ExitApp