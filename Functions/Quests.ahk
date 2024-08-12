; Quests.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk

; claim daily quests
ClaimDaily(){
    ; open character window
    MouseMove, 90, 112
    sleep, 500
    Click
    sleep, 500
    ; open quests tab
    MouseMove, 1455, 74
    sleep, 500
    Click
    sleep, 500
    ; click daily quest tab
    MouseMove, 765, 155
    sleep, 500
    Click
    sleep, 500
    PixelSearch, X, Y, 1544, 286, 1606, 334, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1503, 309
        sleep, 500
        Click
        sleep, 500
        MouseMove, 1619, 990
        sleep, 500
        Click
        sleep, 500
    }
    ; check if claim weekly quests is also checked
    GuiControlGet, Checked, , Weekly,
        If (Checked = 1){
            ; click weekly quests tab
            MouseMove, 1165, 154
            sleep, 500
            Click
            sleep, 500
            PixelSearch, X, Y, 1544, 286, 1606, 334, 0x0AA008, 3, Fast RGB
            If (ErrorLevel = 0){
            MouseMove, 1503, 309
            sleep, 500
            Click
            sleep, 500
            MouseMove, 1619, 990
            sleep, 500
            Click
            sleep, 500
            }
        }
    BigClose()
    Return
}

; claim weekly quests
ClaimWeekly(){
    ; check if claim daily quests is also checked
    GuiControlGet, Checked, , Daily,
        If (Checked = 1){
            Return
        }
    ; open character window
    MouseMove, 90, 112
    sleep, 500
    Click
    sleep, 500
    ; open quests tab
    MouseMove, 1455, 74
    sleep, 500
    Click
    sleep, 500
    ; click weekly tab
    MouseMove, 1165, 154
    sleep, 500
    Click
    sleep, 500    
    PixelSearch, X, Y, 1544, 286, 1606, 334, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1503, 309
        sleep, 500
        Click
        sleep, 500
        MouseMove, 1619, 990
        sleep, 500
        Click
        sleep, 500
        BigClose()
        Return
    }
}