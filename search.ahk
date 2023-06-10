#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; This will send Alt+Space when the Windows key is pressed alone
LWin::
KeyWait, LWin, D T0.15
if (!ErrorLevel)
{
    KeyWait, LWin
    if (A_PriorKey = "LWin")
        Send, !{Space}
}
else
    Send {LWin Down}
return

LWin up::Send {LWin Up}

RWin::
KeyWait, RWin, D T0.15
if (!ErrorLevel)
{
    KeyWait, RWin
    if (A_PriorKey = "RWin")
        Send, !{Space}
}
else
    Send {RWin Down}
return

RWin up::Send {RWin Up}

; This will send Win+R when Alt+R is pressed
!r::Send, #{r}
