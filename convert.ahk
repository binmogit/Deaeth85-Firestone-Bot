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

; Loop through all .ahk files in the same directory as the script
Loop, Files, %A_ScriptDir%\*.ahk
{
    processedFiles++
    ProcessFile(A_LoopFileFullPath)
}

; Loop through all .ahk files in the Functions folder and its subfolders
Loop, Files, %A_ScriptDir%\Functions\*.ahk, R
{
    processedFiles++
    ProcessFile(A_LoopFileFullPath)
}

ProcessFile(filePath)
{
    ; Create a temporary file to store the modified content
    tempFile := filePath . ".tmp"

    Loop, Read, %filePath%
    {
        newLine := A_LoopReadLine

        if InStr(newLine, "MouseMove")
        {
            ; Check if the line contains specific variables %x% and %y%
            if InStr(newLine, "MouseMove, %x%, %y%")
            {
                ; Do nothing for this specific case
            }
            else if InStr(newLine, "%")
            {
                ; Adjust the line for random variables
                newLine := RegExReplace(newLine, "MouseMove,\s*%(\w+)%\s*,\s*%(\w+)%", "MouseMove, % ($1 / 1920) * 1366, % ($2 / 1080) * 768")
            }
            else
            {
                ; Adjust the line for numeric values
                newLine := RegExReplace(newLine, "MouseMove,\s*(\d+),\s*(\d+)", "MouseMove, ($1/1920)*1366, ($2/1080)*768")
            }
        }
        else if RegExMatch(newLine, "(?!\[.*?)(\d+),\s*(\d+),\s*(\d+),\s*(\d+)(?!.*?\])", match)
        {
            ; Replace only the matched sequence of numbers
            newLine := RegExReplace(newLine, "(?!\[.*?)(\d+),\s*(\d+),\s*(\d+),\s*(\d+)(?!.*?\])", "($1/1920)*1366, ($2/1080)*768, ($3/1920)*1366, ($4/1080)*768")
        }

        FileAppend, %newLine%`n, %tempFile%
    }

    ; Replace the original file with the modified content
    FileMove, %tempFile%, %filePath%, 1
}
