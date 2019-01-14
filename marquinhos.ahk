#SingleInstance ignore
CoordMode, Mouse, Screen
SendMode Input 
SetMouseDelay,-1
SetKeyDelay,-1
SetDefaultMouseSpeed, 0
return

^LButton::
    MouseGetPos, EstautaX, EstautaY
    sleep, 10

    segundos    :=  1001
    tecla       :=  "F11"


setup:
    if WinExist("ahk_exe client.exe")    {
        WinActivate
        sleep, 100
        Send, {%tecla%}    ;    Tecla do item
        sleep, 200

        MouseMove, EstautaX, EstautaY

        Send {Click}
        sleep, 1000
    }else{
        MsgBox,, Sua mula, o Tibia esta fechado
        return
    }

Loop,
    {
    sleep 1000
    if A_Index <= %segundos%
        continue
Goto setup
    }