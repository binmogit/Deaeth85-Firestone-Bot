; ClaimCampaign.ahk

#Include Functions\subFunctions\LiberationMissions.ahk
#Include Functions\subFunctions\GoMap.ahk
#Include Functions\subFunctions\BigClose.ahk

;function to get the campaign coins and tokens
ClaimCampaign(){
    ControlFocus,, ahk_exe Firestone.exe
    MouseMove, 1857, 606
    sleep, 500
    Click
    sleep, 500
    ; failsafe in case player doesn't have engineer unlocked
    PixelSearch, X, Y, 997, 310, 1305, 461, 0xF4E0C6, 2, Fast RGB
    If (ErrorLevel = 0){
        BigClose()
        BigClose()
        Return
    }
    PixelSearch, X, Y, 187, 926, 246, 990, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 165, 977
        sleep, 500
        Click
        sleep, 500
    }
    GuiControlGet, SelectedItem, , LiberationStars
    If (SelectedItem != "Don't Complete Liberation Missions") {
        LiberationMissions()
        }    
    BigClose()
}