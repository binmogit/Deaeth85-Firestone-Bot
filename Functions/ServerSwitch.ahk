; ServerSwitch.ahk

#Include Functions\HeroUpgrade.ahk
#Include Functions\subFunctions\BigClose.ahk

ServerSwitch(){
    ; open options
    MouseMove, 1866, 77
    MsgBox, , Server Switch, Switching Servers, 1.5
    Click
    sleep, 500
    ; click switch servers
    MouseMove, 1456, 607
    sleep, 500
    Click
    sleep, 500
    ; click your servers
    MouseMove, 1126, 181
    sleep, 500
    Click
    sleep, 500
    ; check for which server to swap to
    PixelSearch, X, Y, 391, 281, 815, 305, 0xFFAE00, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1269, 350
        sleep, 500
        Click
        sleep, 500
        ; click confirm
        MouseMove, 1111, 697
        sleep, 500
        Click
        sleep, 500
    } Else {
        MouseMove, 709, 340
        sleep, 500
        Click
        sleep, 500
        ; click confirm
        MouseMove, 1111, 697
        sleep, 500
        Click
        sleep, 500
    }
    ; wait for new server
    ServerWait:
    PixelSearch, X, Y, 999, 850, 1078, 877, 0xDBC0A5, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 956, 892
        sleep, 500
        Click
        sleep, 500
        BigClose()
        ; safety click if there's no extra event popup and options gets opened
        MouseMove, 60, 201,
        sleep, 500
        Click
        sleep, 500
        ; setup Hero Upgrade to Milestone
        MouseMove, 1458, 934
        sleep, 500
        Click
        sleep, 500
        ; click x3
        MouseMove, 1601, 979
        sleep, 500
        Click
        sleep, 500
        Click
        sleep, 500
        Click
        sleep, 500
        BigClose()
        ; run heroupgrade
        HeroUpgrade()
        MsgBox, , Server Switch, Clearing arena notification after server switch, 1.5
        Send, K
        sleep, 500
        BigClose()
        ; safety click in case options opened
        MouseMove, 73, 199
        sleep, 500
        Click
        Sleep, 500
        Return
    } Else {
        Goto, ServerWait
    }
}