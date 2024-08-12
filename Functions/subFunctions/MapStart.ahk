; MapStart.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MapClose.ahk

;function to start the map missions, should be all nodes + the gift missions for the world domination mini-event
;because map is different on the larger screen this array is more for 1366x768
MapStart(){
    ;reset map view
    ControlFocus,, ahk_exe Firestone.exe
    sleep 500
    MouseClick, left, 200, 150, , , D
    sleep 500
    MouseClick, left, 1370, 720, , 10, U
    sleep 500
    MouseClick, left, 200, 150, , , D
    sleep 500
    MouseClick, left, 1370, 720, , 10, U
    sleep 500
    MouseClick, left, 1370, 720, , , D
    sleep 500
    MouseClick, left, 685, 123, , 10, U
    Point := {289:223,450:150,475:255,560:155,530:250,595:240,600:410,720:375,975:175,680:525,750:670,835:470,435:395,625:145,625:365,745:300,800:200,915:235,875:365,750:415,620:150}
        ControlFocus,, ahk_exe Firestone.exe
        Click %x%, %y%
        sleep, 500
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