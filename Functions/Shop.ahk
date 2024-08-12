; Shop.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk

lastExecutionTimeShop := 0

Shop(){
    ControlFocus,, ahk_exe Firestone.exe
    PixelSearch, X, Y, 1876, 523, 1905, 564, 0xF40000, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1857, 583
        sleep, 500
        Click
        sleep, 500
        ; claim mystery box
        MouseMove, 591, 754
        sleep, 500
        Click
        sleep, 500
        ; open daily check-in
        MouseMove, 1383, 116
        sleep, 500
        Click
        sleep, 500
        ; check in
        MouseMove, 1342, 834
        sleep, 500
        Click
        sleep, 500
        BigClose()
        MsgBox, , Main Menu Check, Checking to ensure we are on main screen after redeeming shop gifts, 2
        MainMenu()
    }
}
