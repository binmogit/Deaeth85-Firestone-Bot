; Diamond.ahk

#Include Functions\subFunctions\BigClose.ahk

Diamond(){
    PixelSearch, FoundX, FoundY, 1543, 307, 1887, 905, 0xF60151, 1, Fast RGB
    If (ErrorLevel=0){
        MouseMove, FoundX, FoundY
        sleep, 500
        Click
        sleep, 500
        ; click 1
        MouseMove, 914, 812
        sleep, 500
        Click
        sleep, 5000 ; long delay in case 10 or more chests are opened
        ; clicks equip or space it should be
        MouseMove, 962, 850
        sleep, 500
        Click
        sleep, 500
        BigClose()
        ; failsafe in case big close opens options
        MouseMove, 59, 183
        sleep, 500
        Click
        sleep, 500
    }
}