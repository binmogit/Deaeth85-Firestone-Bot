; CheckMail.ahk

#Include Functions\subFunctions\BigClose.ahk

CheckMail(){
    ControlFocus,, ahk_exe Firestone.exe
    ; open mail
    MouseMove, 56, 777
    sleep, 500
    Click
    sleep, 500
    ; attempt to click claim
    PixelSearch, X, Y, 1260, 780, 1334, 835, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1215, 808
        sleep, 500
        Click
        sleep, 500
        ; click ok if mail had attachment, otherwise will be empty click in mail area
        MouseMove, 1172, 688
        sleep, 500
        Click
        sleep, 500
    }
    ; delete mail if any there
    PixelSearch, X, Y, 1533, 904, 1601, 969, 0xE9554E, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1569, 939
        sleep, 500
        Click
        sleep, 500
    }
    BigClose()
}