; LiberationInProgressCheck.ahk

LiberationInProgress(){
    Search:
    PixelSearch, X, Y, 990, 703, 1059, 737, 0x0AA008, 10, Fast RGB
        If(ErrorLevel=0){
            MouseMove, 967, 744
            sleep, 500
            Click
            sleep, 500
            Return True
        }
    Sleep, 2000
    Goto, Search
    }