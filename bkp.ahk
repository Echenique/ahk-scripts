#SingleInstance ignore
CoordMode, Mouse, Screen
SendMode Input 
SetMouseDelay,-1
SetKeyDelay,-1
SetDefaultMouseSpeed, 0
return


Pause::
    MouseGetPos, EstautaX, EstautaY
        sleep, 10

; Quantos segundos aguardar e qual tecla usar        https://autohotkey.com/docs/KeyList.htm    
    segundos    :=    1001
    tecla        :=    "F11"

Usuariodemacrodeveriaserbanido:

    if WinExist("ahk_exe client.exe")    {
        WinActivate

            sleep, 100

        Send, {%tecla%}    ;    Tecla do item
            sleep, 200

        MouseMove, EstautaX, EstautaY

        Send {Click}
            sleep, 1000
    }
    else
        {
            MsgBox,, 'Sua mula, o Tibia esta fechado'
                return
        }

Loop,
    {
    sleep 1000
     if A_Index <= %segundos%
        continue
Goto Usuariodemacrodeveriaserbanido
    }