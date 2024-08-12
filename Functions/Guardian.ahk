; Guardian.ahk

#Include Functions\subFunctions\BigClose.ahk

;function that does the guardian training and guardian evolving
Guardian(){
    ControlFocus,, ahk_exe Firestone.exe
    ; open Magic Quarter
    MouseMove, 658, 284
    sleep, 500
    click
    sleep, 500
    ; check for evolve
    PixelSearch, X, Y, 1491, 110, 1533, 144, 0x0F40000, 3, Fast RGB
    if(ErrorLevel=0){
        MouseMove, 1450,174
        sleep, 500
        Click
        sleep, 500
        MouseMove, 1117, 750
        Click
        Sleep, 10500
        MouseMove, 1291, 171
        sleep, 500
        Click
        sleep, 500
    }
    ; check for training
    PixelSearch, X, Y, 1199, 766, 1257, 810, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1138, 787
        sleep, 500
        click
        sleep, 500
    }
    ; spend
    PixelSearch, X, Y, (1525/1920)*1366, (766/1080)*768, (1550/1920)*1366, (810/1080)*768, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, (1525/1920)*1366, (766/1080)*768
        Sleep, 500
        Click
        Sleep, 500
    }
    BigClose()
    Return
}