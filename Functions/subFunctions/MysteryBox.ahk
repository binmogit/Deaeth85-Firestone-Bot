; MysteryBox.ahk

#Include Functions\subFunctions\BigClose.ahk

MysteryBox(){
    PixelSearch, FoundX, FoundY, 1543, 307, 1887, 905, 0x4800A9, 3, Fast RGB
    If (ErrorLevel=0){
        MouseMove, FoundX, FoundY
        sleep, 500
        Click
        sleep, 500
        ; click 1
        MouseMove, 904, 724
        sleep, 500
        Click
        sleep, 5000 ; long delay in case 10 or more chests are opened
        BigClose()
        ; failsafe in case big close opens options
        MouseMove, 59, 183
        sleep, 500
        Click
        sleep, 500
    }
}