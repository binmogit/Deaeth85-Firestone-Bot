; Initialize progress variables
totalFiles := 0
processedFiles := 0

; Count total files in the directory and subdirectories
Loop, Files, %A_ScriptDir%\*.ahk
{
    totalFiles++
}
Loop, Files, %A_ScriptDir%\Functions\*.ahk, R
{
    totalFiles++
}

; Create the GUI for progress tracking
Gui, Add, Text, x10 y10 w430 h50 vProgressText, Processing Files...
Gui, Add, Progress, x10 y60 w300 h20 vProgressBar
Gui, Show, w450 h100, Progress

; Loop through all .ahk files in the same directory as the script
Loop, Files, %A_ScriptDir%\*.ahk
{
    processedFiles++
    ProgressTracker(A_LoopFileFullPath, processedFiles, totalFiles)
    ProcessFile(A_LoopFileFullPath)
}

; Loop through all .ahk files in the Functions folder and its subfolders
Loop, Files, %A_ScriptDir%\Functions\*.ahk, R
{
    processedFiles++
    ProgressTracker(A_LoopFileFullPath, processedFiles, totalFiles)
    ProcessFile(A_LoopFileFullPath)
}

ProcessFile(filePath)
{
    ; Create a temporary file to store the modified content
    tempFile := filePath . ".tmp"

    Loop, Read, %filePath%
    {
        if InStr(A_LoopReadLine, "MouseMove")
        {
            ; Updated regex to match numbers within MouseMove with or without spaces after the comma
            newLine := RegExReplace(A_LoopReadLine, "MouseMove,\s*(\d+),\s*(\d+)", "MouseMove, ($1/1920)*1366, ($2/1080)*768")
            ; Check for random variables and adjust them
            newLine := RegExReplace(newLine, "MouseMove,\s*%(\w+)%\s*,\s*%(\w+)%", "MouseMove, % ($1 / 1920) * 1366, % ($2 / 1080) * 768")

            FileAppend, %newLine%`n, %tempFile%
        }
        else if RegExMatch(A_LoopReadLine, "(?!\[.*?)(\d+),\s*(\d+),\s*(\d+),\s*(\d+)(?!.*?\])", match)
        {
            ; Replace only the matched sequence of numbers
            newLine := RegExReplace(A_LoopReadLine, "(?!\[.*?)(\d+),\s*(\d+),\s*(\d+),\s*(\d+)(?!.*?\])", "($1/1920)*1366, ($2/1080)*768, ($3/1920)*1366, ($4/1080)*768")
            FileAppend, %newLine%`n, %tempFile%
        }
        else
        {
            FileAppend, %A_LoopReadLine%`n, %tempFile%
        }
    }

    ; Replace the original file with the modified content
    FileMove, %tempFile%, %filePath%, 1
}

ProgressTracker(filePath, processedFiles, totalFiles)
{
    ; Update progress
    percentage := Round((processedFiles / totalFiles) * 100)
    GuiControl,, ProgressText, Processing file: %filePath%`nProgress: %processedFiles% / %totalFiles%
    GuiControl,, ProgressBar, %percentage%
}

; Close the GUI when done
Gui, Destroy
