; Legendary.ahk

#Include Functions\subFunctions\BigClose.ahk

Legendary(){
    PixelSearch, FoundX, FoundY, 1543, 307, 1887, 905, 0xC63A07, 3, Fast RGB
    If (ErrorLevel=0){
        MouseMove, FoundX, FoundY
        Sleep, 1000
        Click
        Sleep, 1000
        ; click 1
        MouseMove, 914, 812
        Sleep, 1000
        Click
        Sleep, 10000 ; long delay in case 10 or more chests are opened
        ; clicks equip or space it should be
        MouseMove, 962, 850
        Sleep, 1000
        Click
        Sleep, 1000
        BigClose()
        ; failsafe in case big close opens options
        MouseMove, 59, 183
        Sleep, 1000
        Click
        Sleep, 1000
    }
}