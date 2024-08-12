;ClaimEngineer.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\WMUpgrade.ahk

ClaimEngineer(){
    ControlFocus,, ahk_exe Firestone.exe
    ; open engineer
    MouseMove, 1230, 820
    sleep, 500
    Click
    sleep, 500
    ; check if option to level WM's is chosen
    GuiControlGet, SelectedItem, ,UpgradeWM,
        If (SelectedItem != "Don't Upgrade WM's"){                
            MouseMove, 964, 507
            sleep, 500
            Click
            sleep, 500
            WMUpgrade()
            ; open engineer 
            MouseMove, 131, 435
            sleep, 500
            Click
            sleep, 500
            Goto, ClaimTools
        } 
    ; select engineer
    MouseMove, 610, 540
    sleep, 500
    Click
    sleep, 500
    ClaimTools:
    ; claim tools
    PixelSearch, X, Y, 1709, 686, 1747, 733, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0 ){
        MouseMove, 1642, 704
        sleep, 500
        Click
        sleep, 500
    }
    BigClose()
    return
}
