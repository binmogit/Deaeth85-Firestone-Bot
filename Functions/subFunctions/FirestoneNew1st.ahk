; FirestoneNew1st.ahk

#Include Functions\subFunctions\FirestoneClicks.ahk

FirestoneNew1st() {
    If (Slot1InProcess = 0){
        MouseMove, 1429, 944
        MsgBox, , Setup, Scrolling to ensure tree setup, 1.5
        Loop, 35{
            Send, {WheelUp}
            Sleep, 200
        }
    }
    ; click research - column 1 upper
    MouseMove, 405, 270
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 1 mid upper
    MouseMove, 427, 391
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 1 middle
    MouseMove, 424, 506
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 1 mid lower
    MouseMove, 423, 629
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 1 lower
    MouseMove, 422, 749
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 2 upper
    MouseMove, 876, 272
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 2 mid upper
    MouseMove, 875, 384
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 2 middle
    MouseMove, 879, 514
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 2 mid lower
    MouseMove, 870, 634
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 2 lower
    MouseMove, 870, 758
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 3 upper
    MouseMove, 1344, 264
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 3 mid upper
    MouseMove, 1336, 384
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 3 middle
    MouseMove, 1344, 515
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 3 mid lower
    MouseMove, 1340, 631
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 3 lower
    MouseMove, 1350, 754
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 4
    MouseMove, 1795, 503
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 5 upper
    Loop, 35{
        Send, {WheelDown}
        Sleep, 200
    }
    MouseMove, 306, 379
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 5 lower
    MouseMove, 299, 628
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 6 upper
    MouseMove, 754, 383
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 6 middle
    MouseMove, 780, 508
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 6 lower
    MouseMove, 766, 632
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 7 upper
    MouseMove, 1232, 269
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 7 mid upper
    MouseMove, 1233, 391
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 7 middle
    MouseMove, 1228, 511
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 7 mid lower
    MouseMove, 1221, 632
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 7 lower
    MouseMove, 1221, 632
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 8 upper
    MouseMove, 1687, 278
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 8 mid upper
    MouseMove, 1675, 388
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 8 middle
    MouseMove, 1693, 509
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 8 mid lower
    MouseMove, 1676, 628
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
    ; column 8 lower
    MouseMove, 1697, 752
    sleep, 500
    Click
    Sleep, 500
    FirestoneClicks()
    If (Slot1InProcess = 1){
        Return
    }
}
