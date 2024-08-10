; MapStart.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MapClose.ahk

;function to start the map missions, should be all nodes + the gift missions for the world domination mini-event
;because map is different on the larger screen this array is more for 1366x768
MapStart(){
    Point := {430:217,500:370,614:465,668:425,653:532,908:479,875:365,994:290,1047:190,937:307,932:552,764:615,748:555,560:355,522:272:658:267,620:183,381:135,570:443,620:383,688:381,735:371,951:451,866:223}
    For x,y in Point{
        ControlFocus,, ahk_exe Firestone.exe
        Click %x%, %y%
        Sleep, 1000
        ; check if mission can be started
        PixelSearch, X, Y, 953, 822, 1205, 898, 0x0AA008, 10, Fast RGB
        If(ErrorLevel=0){
            MouseMove, 1084, 865
            MsgBox, , Mission Start, Mission found - Starting, 1.5
            Click
            Sleep, 500
            MsgBox, , Troop Check, Looking for more idle troops, 2
        } Else {
            MapClose()
        }
        ; check for more idle troops
        PixelSearch, X, Y, 1050, 950, 1187, 1012, 0x542710, 10, Fast RGB
            If(ErrorLevel=0){
                Continue
            }
        MsgBox, , Troop Check, No idle troops found - ending mission search, 2
        Return
    }
}