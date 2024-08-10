; Loop through all .ahk files in the same directory as the script
Loop, Files, %A_ScriptDir%\*.ahk
{
    ProcessFile(A_LoopFileFullPath)
}

; Loop through all .ahk files in the Functions folder and its subfolders
Loop, Files, %A_ScriptDir%\Functions\*.ahk, R
{
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
