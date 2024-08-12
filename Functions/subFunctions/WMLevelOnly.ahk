; WMLevelOnly.ahk

LevelOnly(){
    PixelSearch, X, Y, 1358, 103, 1400, 133, 0xF40000, 3, Fast RGB
    If (ErrorLevel = 0){
        ; open anvil tab
        MouseMove, 1337, 170
        sleep, 500
        Click
        sleep, 500
        ; click upgrade
        MouseMove, 1428, 581
        sleep, 500
        Click
        sleep, 500
    }
}