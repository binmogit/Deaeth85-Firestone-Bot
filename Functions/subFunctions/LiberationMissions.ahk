; LiberationMissions.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\LiberationInProgressCheck.ahk

LiberationMissions(){
    ControlFocus,, ahk_exe Firestone.exe
    ; open daily missions if notification present
    PixelSearch, X, Y, 1873, 920, 1900, 954, 0xF40000, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 1800, 982
    sleep, 500
    Click
    sleep, 500
    } Else {
        Return
    }
    ; open Liberation
    MouseMove, 697, 788
    sleep, 500
    Click
    sleep, 500
    Loop, 60{
        Send, {WheelDown}
        Sleep, 200
    }
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="190+ Stars"){
            Goto, 190Stars
        }
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="155 - 189 Stars"){
            Goto, 155Stars
        }   
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="110 - 119 Stars"){
            Goto, 110Stars
        }
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="80 - 109 Stars"){
            Goto, 80Stars
        }
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="60 - 69 Stars"){
            Goto, 60Stars
        }
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="40 - 59 Stars"){
            Goto, 40Stars
        }
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="20 - 39 Stars"){
            Loop, 60{
                Send, {WheelUp}
                Sleep, 200
            }
            Goto, 20Stars
        }
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="10 - 19 Stars"){
            Loop, 60{
                Send, {WheelUp}
                Sleep, 200
            }
            Goto, 10Stars
        }
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="5 - 9 Stars"){
            Loop, 60{
                Send, {WheelUp}
                Sleep, 200
            }
            Goto, 5Stars
        }    
    ; missions
    190Stars:
    {
        MouseMove, 1581, 759
        sleep, 500
        Click
        sleep, 500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
            If (ErrorLevel=0){
                Goto, 155Stars
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        Goto, 155Stars
    } 
    155Stars:
    {
        MouseMove, 1193, 767
        sleep, 500
        Click
        sleep, 500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
            If (ErrorLevel=0){
                Goto, 110Stars
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        Goto, 110Stars
    }
    110Stars:
    {
        MouseMove, 797, 759
        sleep, 500
        Click
        sleep, 500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
            If (ErrorLevel=0){
                Goto, 80Stars
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        Goto, 80Stars
    }
    80Stars:
    {
        MouseMove, 412, 748
        sleep, 500
        Click
        sleep, 500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
            If (ErrorLevel=0){
                Goto, 60Stars
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        Goto, 60Stars
    }
    60Stars:
    {
        MouseMove, 137, 742
        sleep, 500
        Click
        sleep, 500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
            If (ErrorLevel=0){
                Goto, 40Stars
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        Goto, 40Stars
    }
    40Stars:
    {
        Loop, 60{
            Send, {WheelUp}
            Sleep, 200
        }
        MouseMove, 1505, 758
        sleep, 500
        Click
        sleep, 500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
            If (ErrorLevel=0){
                Goto, 20Stars
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        Goto, 20Stars
    }
    20Stars:
    {
        MouseMove, 1115, 755
        sleep, 500
        Click
        sleep, 500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
            If (ErrorLevel=0){
                Goto, 10Stars
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        Goto, 10Stars
    }
    10Stars:
    {
        MouseMove, 713, 753
        sleep, 500
        Click
        sleep, 500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
            If (ErrorLevel=0){
                Goto, 5Stars
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        Goto, 5Stars
    }
    5Stars:
    {
        MouseMove, 331, 758
        sleep, 500
        Click
        sleep, 500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
            If (ErrorLevel=0){
                BigClose()
                Goto, CheckDungeon
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        BigClose()
        Goto, CheckDungeon
    }

    CheckDungeon:
    ; see if we have enough stars for dungeon missions
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="190+ Stars"){
            Goto, Dungeon
        } Else {
            If (SelectedItem="155 - 189 Stars"){
                Goto, Dungeon
            } Else {
                If (SelectedItem="120 - 154 Stars"){
                    Goto, Dungeon 
                } Else {
                    If (SelectedItem="110 - 119 Stars"){
                        Goto, Dungeon
                    } Else {
                        If (SelectedItem="80 - 109 Stars"){
                            Goto, Dungeon
                        } Else {
                            If (SelectedItem="70 - 79 Stars"){
                                Goto, Dungeon
                            }
                        }
                    }
                }
            }
        }
    Return
    Dungeon:
    {
        ; open dungeon
        MouseMove, 1223, 794
        sleep, 500
        Click
        sleep, 500
    }
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="190+ Stars"){
            Goto, 120Stars
        } Else {
            If (SelectedItem="155 - 189 Stars"){
                Goto, 120Stars
            } Else {
                If (SelectedItem="120 - 154 Stars"){
                    Goto, 120Stars
                } Else {
                    If (SelectedItem="110 - 119 Stars"){
                        Goto, 70Stars
                    } Else {
                        If (SelectedItem="80 - 109 Stars"){
                            Goto, 70Stars
                        } Else {
                            If (SelectedItem="70 - 79 Stars"){
                                Goto, 70Stars
                            }
                        }
                    }
                }
            }
        }
    120Stars:
    {
        MouseMove, 1149, 763
        sleep, 500
        Click
        sleep, 500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
            If (ErrorLevel=0){
                Goto, 70Stars
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        Goto, 70Stars
    }
    70Stars:
    {
        MouseMove, 768, 762
        sleep, 500
        Click
        sleep, 500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
            If (ErrorLevel=0){
                Return
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
    }
BigClose()
BigClose()
BigClose()
}