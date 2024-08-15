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
    Point := {628:578,448:183,663:383,713:636,799:239,868:398,316:155,398:270,563:188,436:382,505:460,493:605,546:480,600:440,945:495,621:177,533:280,745:335,800:323,793:380,683:551,385:143,300:292,340:352,660:302,852:140,935:298,883:452,870:555,330:693}
    For x,y in Point{
        ControlFocus,, ahk_exe Firestone.exe
		MouseMove, %x%, %y%
        Click
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