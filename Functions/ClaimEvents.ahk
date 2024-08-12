; ClaimEvents.ahk

#Include Functions\subFunctions\BigClose.ahk

ClaimEvents(){
    ControlFocus,, ahk_exe Firestone.exe
    PixelSearch, X, Y, 1719, 170, 1741, 204, 0xF40000, 3, Fast RGB
    If (ErrorLevel = 0){
        ; open events
        MouseMove, 1691, 229
        sleep, 500
        Click
        sleep, 500
        ; click top event
        MouseMove, 942, 359
        sleep, 500
        Click
        sleep, 500
        ; click challenges
        MouseMove, 1125, 70
        sleep, 500
        Click
        sleep, 500
        ; claim 3 challenges
        PixelSearch, X, Y, 1540, 365, 1568, 405, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
        MouseMove, 1483, 382
        sleep, 500
        Click
        Sleep, 500
        }
        PixelSearch, X, Y, 1538, 592, 1566, 633, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
        MouseMove, 1496, 604
        sleep, 500
        Click
        Sleep, 500
        }
        PixelSearch, X, Y, 1530, 823, 1568, 870, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
        MouseMove, 1500, 837
        sleep, 500
        Click
        Sleep, 500
        }
    BigClose()
    BigClose()
    MsgBox, , Main Menu Check, Checking to ensure we are on main screen after claiming events, 2
    MainMenu()
    }
}