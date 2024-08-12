; Research.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\ResearchStart.ahk
#Include Functions\subFunctions\ResearchSlotTest.ahk

global Slot1InProcess := 0
global Slot2InProcess := 0

GoResearch() {
    ControlFocus,, ahk_exe Firestone.exe
    ; open Library
    MouseMove, 329, 657
    sleep, 500
    click
    sleep, 500
    ; select Firestone tree
    MouseMove, 1809, 975
    sleep, 500
    click
    sleep, 500
    ResearchSlotTest()
    If (Slot1InProcess = 0){
        ResearchStart()
    }
    If (Slot2InProcess = 0){
        ResearchStart()
    }
    BigClose()
}