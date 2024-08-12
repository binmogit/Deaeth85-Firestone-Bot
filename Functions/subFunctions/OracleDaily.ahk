; OracleDaily

#Include Functions\subFunctions\BigClose.ahk

OracleDaily(){
    ; Look for oracle gift notification
    PixelSearch, X, Y, 859, 684, 901, 740, 0xF40000, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 823, 760
        sleep, 500
        Click
        sleep, 500
        ; Claim Oracle's gift
        MouseMove, 619, 756
        sleep, 500
        Click
        sleep, 500
        BigClose()
    }
    Return
}
