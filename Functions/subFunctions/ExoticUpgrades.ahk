; ExoticUpgrades.ahk

ExoticUpgrades(){
    MouseMove, 1282, 173
    sleep, 500
    Click
    sleep, 500
    MouseMove, 1270, 567
    Loop, 50{
        Send, {WheelUp}
        Sleep, 200
    }
    ; check row 1 spot 1
    PixelSearch, X, Y, 1004, 833, 1060, 874, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 900, 851
        sleep, 500
        Click
        Sleep, 500
        Return
    } Else {
        ; check row 1 spot 2
        PixelSearch, X, Y, 1350, 830, 1400, 865, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1284, 840
            sleep, 500
            Click
            Sleep, 500
            Return
        } Else {
            ; check row 1 spot 3
            PixelSearch, X, Y, 1694, 831, 1741, 872, 0x0AA008, 3, Fast RGB
            If (ErrorLevel = 0){
                MouseMove, 1626, 836
                sleep, 500
                Click
                Sleep, 500
                Return
            } Else {
                ; scroll to row 2
                Loop, 13{
                    Send, {WheelDown}
                    Sleep, 200
                }
                ; check row 2 spot 1
                PixelSearch, X, Y, 999, 907, 1051, 946, 0x0AA008, 3, Fast RGB
                If (ErrorLevel = 0){
                    MouseMove, 932, 919
                    sleep, 500
                    Click
                    Sleep, 500
                    Return
                } Else {
                    ; check row 2 spot 2
                    PixelSearch, X, Y, 1353, 905, 1400, 944, 0x0AA008, 3, Fast RGB
                    If (ErrorLevel = 0){
                        MouseMove, 1278, 911
                        sleep, 500
                        Click
                        Sleep, 500
                        Return
                    } Else {
                        ; check row 2 spot 3
                        PixelSearch, X, Y, 1695, 904, 1745, 939, 0x0AA008, 3, Fast RGB
                        If (ErrorLevel = 0){
                            MouseMove, 1621, 906
                            sleep, 500
                            Click
                            Sleep, 500
                            Return
                        } Else {
                            ; scroll to row 3
                            Loop, 15{
                                Send, {WheelDown}
                                Sleep, 200
                            }
                            ; check row 3 spot 1
                            PixelSearch, X, Y, 999, 907, 1051, 946, 0x0AA008, 3, Fast RGB
                            If (ErrorLevel = 0){
                                MouseMove, 932, 919
                                sleep, 500
                                Click
                                Sleep, 500
                                Return
                            } Else {
                                ; check row 3 spot 2
                                PixelSearch, X, Y, 1353, 905, 1400, 944, 0x0AA008, 3, Fast RGB
                                If (ErrorLevel = 0){
                                    MouseMove, 1278, 911
                                    sleep, 500
                                    Click
                                    Sleep, 500
                                    Return
                                } Else {
                                    ; check row 3 spot 3
                                    PixelSearch, X, Y, 1695, 904, 1745, 939, 0x0AA008, 3, Fast RGB
                                    If (ErrorLevel = 0){
                                        MouseMove, 1621, 906
                                        sleep, 500
                                        Click
                                        Sleep, 500
                                        Return
                                    } Else {
                                        ; scroll to row 4
                                        Loop, 15{
                                            Send, {WheelDown}
                                            Sleep, 200
                                        }
                                        ; check row 4 spot 1
                                        PixelSearch, X, Y, 999, 907, 1051, 946, 0x0AA008, 3, Fast RGB
                                        If (ErrorLevel = 0){
                                            MouseMove, 932, 919
                                            sleep, 500
                                            Click
                                            Sleep, 500
                                            Return
                                        } Else {
                                            ; check row 4 spot 2
                                            PixelSearch, X, Y, 1353, 905, 1400, 944, 0x0AA008, 3, Fast RGB
                                            If (ErrorLevel = 0){
                                                MouseMove, 1278, 911
                                                sleep, 500
                                                Click
                                                Sleep, 500
                                                Return
                                            } Else {
                                                ; check row 4 spot 3
                                                PixelSearch, X, Y, 1695, 904, 1745, 939, 0x0AA008, 3, Fast RGB
                                                If (ErrorLevel = 0){
                                                    MouseMove, 1621, 906
                                                    sleep, 500
                                                    Click
                                                    Sleep, 500
                                                    Return
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}