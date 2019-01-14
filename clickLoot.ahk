#SingleInstance ignore
#IfWinActive, ahk_exe client.exe
CoordMode, Mouse, Screen
SendMode Input 
SetMouseDelay,-1
SetKeyDelay,-1
SetDefaultMouseSpeed, 0
return

;Alt+ Right mouse button to set position
!RButton::
    MouseGetPos, posX, posY
    return

;Alt+ Left mouse button to drag itens and back
!LButton::
    MouseGetPos, bX, bY
    Click, bX, bY, Left, down
    MouseMove, posX, posY
    Click, Left, up
    MouseMove, bX, bY
    return

;Alt+ Left mouse button to drag itens and back
Wheelup::
    if(!charX || !charY)
    {
        MsgBox, 0, , set position
        Sleep, 900
        KeyWait, LButton, D
        MouseGetPos, charX, charY
        return
        
    }else{
        MouseGetPos, initX, initY
        recoil := 80
        dl := 50
        Send, {Shift down}
        MouseClick, Right, (charX-recoil), (charY-recoil)
        Sleep, dl
        MouseClick, Right, charX, charY-recoil
        Sleep, dl
        MouseClick, Right, charX+recoil, charY-recoil
        Sleep, dl
        MouseClick, Right, charX+recoil, charY
        Sleep, dl
        MouseClick, Right, charX+recoil, charY+recoil
        Sleep, dl
        MouseClick, Right, charX, charY+recoil
        Sleep, dl
        MouseClick, Right, charX-recoil, charY+recoil
        Sleep, dl
        MouseClick, Right, charX, charY
        Sleep, dl
        MouseClick, Right, charX-recoil, charY
        Sleep, dl
        Send, {Shift up}
        MouseMove, initX, initY
        return
    }


