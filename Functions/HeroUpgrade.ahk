; HeroUpgrade.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk

; function that upgrades heros
HeroUpgrade(){
    ControlFocus,, ahk_exe Firestone.exe
    ; open upgrade menu
    MsgBox, , Hero Upgrades, Opening Hero Upgrade Menu, 2
    Send, U
    sleep, 500
    ; check special upgrade

    HeroLoops := 0
    MaxHeroLoops := 3 ; Number of iterations to check before stopping
    Loop
    {
        MsgBox, , Hero Upgrades, Upgrading heros loop %HeroLoops% , 2

        ; check special upgrade
        PixelSearch, X, Y, 1874, 207, 1889, 249, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0 ){
            MouseMove, 1769, 205
            sleep, 500
            Click
            Sleep, 500
        }
        ; check 5th hero
        PixelSearch, X, Y, 1868, 880, 1885, 912, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0 ){
            MouseMove, 1752, 873
            sleep, 500
            Click
            Sleep, 500
        }
        ; check 4th hero
        PixelSearch, X, Y, 1864, 770, 1889, 802, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0 ){
            MouseMove, 1770, 772
            sleep, 500
            Click
            Sleep, 500
        }
        ; check 3rd hero
        PixelSearch, X, Y, 1866, 654, 1889, 693, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0 ){
            MouseMove, 1773, 650
            sleep, 500
            Click
            Sleep, 500
        }
        ; check 2nd hero
        PixelSearch, X, Y, 1866, 545, 1885, 584, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0 ){
            MouseMove, 1759, 539
            sleep, 500
            Click
            Sleep, 500
        }
        ; check 1st hero
        PixelSearch, X, Y, 1862, 434, 1888, 469, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0 ){
            MouseMove, 1763, 427
            sleep, 500
            Click
            Sleep, 500
        }
        ; check guardian
        PixelSearch, X, Y, 1869, 319, 1890, 352, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0 ){
            MouseMove, 1757, 317
            sleep, 500
            Click
            Sleep, 500
        }
        HeroLoops++
        if (HeroLoops >= MaxHeroLoops)
        {
            break
        }
    }
    BigClose()
}