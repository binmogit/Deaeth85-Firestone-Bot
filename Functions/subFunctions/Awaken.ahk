; Awaken.ahk

#Include Functions\subFunctions\BigClose.ahk

AwakenRun(){
    ControlFocus,, ahk_exe Firestone.exe
    ; Check for awaken heroes notification on crystal screen
    PixelSearch, X, Y, 1877, 308, 1905, 339, 0xF40000, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1826, 360
        sleep, 500
        Click
        sleep, 500
        ; look for and click highest x#
        PixelSearch, X, Y, 1839, 313, 1902, 328, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1865, 338
            sleep, 500
            Click
            sleep, 500
        } Else {
            PixelSearch, X, Y, 1739, 316, 1802, 330, 0x0AA008, 3, Fast RGB
            If (ErrorLevel = 0){
                MouseMove, 1767, 342
                sleep, 500
                Click
                sleep, 500
            } Else {
                PixelSearch, X, Y, 1639, 315, 1706, 319, 0x0AA008, 3, Fast RGB
                If (ErrorLevel = 0){
                    MouseMove, 1676, 339
                    sleep, 500
                    Click
                    sleep, 500
                }
            }
        }
        ; Change to auto
        MouseMove, 1774, 993
        sleep, 500
        Click
        Sleep, 20000
        BigClose()
    }
}
