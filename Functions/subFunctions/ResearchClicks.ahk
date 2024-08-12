; ResearchClicks.ahk

#Include Functions\subFunctions\ResearchSlotTest.ahk

ResearchClicks(){
    ; start or safely click away from spend gems
    MouseMove, 721, 747
    sleep, 500
    Click
    sleep, 500
    ResearchSlotTest()
}