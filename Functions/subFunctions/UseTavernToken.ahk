; UseTavernToken.ahk

#include Functions\subFunctions\MainMenu.ahk
#include Functions\subFunctions\BigClose.ahk

global UseThree := 0
global UseTwo := 0
global UseOne := 0

UseToken(){
    ; check for 3 use token buttons
    PixelSearch, X, Y, 705, 932, 752, 988, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        PixelSearch, X, Y, 1019, 934, 1050, 991, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            PixelSearch, X, Y, 1250, 932, 1279, 987, 0x0AA008, 3, Fast RGB
            If (ErrorLevel = 0){
                UseThree := 1
            }
        }
    }
    ; check for 2 use token buttons
    PixelSearch, X, Y, 815, 934, 875, 987, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        PixelSearch, X, Y, 1134, 934, 1163, 980, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            UseTwo := 1
        }
    }
    ; check for one use token button
    PixelSearch, X, Y, 1019, 934, 1050, 991, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        UseOne := 1
    }
    If (UseThree = 1){
        MouseMove, 1188, 959
        sleep, 500
        Click
        sleep, 500
    } Else {
        If (UseTwo = 1){
            MouseMove, 1082, 957
            sleep, 500
            Click
            sleep, 500
        } Else {
            If (UseOne = 1){
                MouseMove, 962, 958
                sleep, 500
                Click
                sleep, 500
            } Else {
                Return
            }
        }
    }

    ; Define the X and Y coordinates for each card
    XCoords := [680, 956, 1243, 680, 956, 1243]
    YCoords := [315, 315, 315, 715, 715, 715]

    ; Generate a random index for card selection to be randomized
    Random, RandomIndex, 1, 6

    ; Get the random location
    RandomX := XCoords[RandomIndex]
    RandomY := YCoords[RandomIndex]
    sleep, 500
    MouseMove, %RandomX%, %RandomY%
    sleep, 500
    Click
    sleep, 500

    ; random click in case get game tokens was clicked
    MouseMove, 1257, 49
    sleep, 500
    Click
    sleep, 500
}