#SingleInstance ignore
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

